import 'dart:async';
import 'package:Bex/application/bootstrap/cubit.dart';
import 'package:Bex/application/map/bottom_nav/cubit.dart';
import 'package:Bex/application/map/location_search/cubit.dart';
import 'package:Bex/application/map/markers/markers_watcher_cubit.dart';
import 'package:Bex/application/map/markers/markers_watcher_state.dart';
import 'package:Bex/application/map_location_cubit/map_location_cubit.dart';
import 'package:Bex/core/hooks/focus_node_value_listener.dart';
import 'package:Bex/domain/map/i_map_facade.dart';
import 'package:Bex/domain/story/entities/story_entity.dart';
import 'package:Bex/presentation/views/app_view/components/location_search.dart';
import 'package:Bex/presentation/views/app_view/components/location_search_result_picker.dart';
import 'package:Bex/presentation/views/app_view/components/main_menu.dart';
import 'package:Bex/presentation/views/story_view/story_view.dart';
import 'package:Bex/presentation/widgets/dialogs/create_story_dialog.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:build_context/build_context.dart';
import '../../../../sl.dart';

const zoom = 15.0;

class Map extends HookWidget {
  final _controller = Completer<GoogleMapController>();

  @override
  Widget build(BuildContext context) {
    final textFieldFocus = useState(false);
    final focusNode = useFocusNodeValueListener((hasFocus) {
      textFieldFocus.value = hasFocus;
    });
    final textController = useTextEditingController();
    final bootStrapCubit = context.bloc<BootstrapCubit>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<LocationSearchCubit>()),
        BlocProvider(create: (_) => sl<MarkersCubit>()..watch()),
      ],
      child: BlocBuilder<MapLocationCubit, LatLng>(
        builder: (context, locState) {
          final _cameraPos = CameraPosition(
            target: locState, //cape town
            zoom: zoom,
          );

          return Builder(
            builder: (blocContext) => BlocBuilder<MarkersCubit, MarkersState>(
              builder: (context, state) {
                final markers =
                    Set<Marker>.from(state.stories.asList().map<Marker>(
                          (story) => Marker(
                            markerId: MarkerId(story.id),
                            icon: story.storyType == StoryType.positive
                                ? state.positiveIcon
                                : state.negativeIcon,
                            onTap: () {
                              context.push<void>(
                                MaterialPageRoute(
                                  builder: (context) => StoryView(
                                    story,
                                    blocContext,
                                  ),
                                ),
                              );
                            },
                            position: story.latLng,
                          ),
                        ));

                return Stack(
                  children: [
                    GoogleMap(
                      onTap: (argument) {
                        _handleTap(
                          context,
                          textFieldFocus,
                          focusNode,
                          argument,
                          bootStrapCubit.getOrCrash.hasTypeOne,
                        );
                      },
                      onLongPress: (argument) => _handleLongPress(
                        context,
                        textFieldFocus,
                        focusNode,
                      ),
                      onCameraMoveStarted: () => _handleCameraMoveStart(
                        context,
                        textFieldFocus,
                        focusNode,
                      ),
                      myLocationButtonEnabled: false,
                      initialCameraPosition: _cameraPos,
                      onMapCreated: (controller) {
                        _controller.complete(controller);
                      },
                      markers: Set.from(markers),
                    ),
                    if (textFieldFocus.value)
                      LocationSearchResultPicker((String placeId) {
                        _onPredictionTap(
                          context,
                          textFieldFocus,
                          focusNode,
                          textController,
                          placeId,
                        );
                      }),
                    LocationSearchBar(focusNode, textController),
                    MainMenu(),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  Future<void> _onPredictionTap(
    BuildContext context,
    ValueNotifier<bool> textFieldFocus,
    FocusNode focusNode,
    TextEditingController textController,
    String placeId,
  ) async {
    textController.clear();
    _onMapTap(context, textFieldFocus, focusNode);
    final mapsService = sl<IMapFacade>();
    final eitherFailureOrPlaceDetails =
        await mapsService.getDetailsByPlaceId(placeId);

    eitherFailureOrPlaceDetails.fold(
      (f) => FlushbarHelper.createError(
        title: "Network Error",
        message: "Please check your connection and try again.",
      )..show(context),
      (placeDetails) {
        final locCubit = context.bloc<MapLocationCubit>();
        final lat = placeDetails.result.geometry.location.lat;
        final lng = placeDetails.result.geometry.location.lng;

        final updatedCameraPos = CameraPosition(
          target: LatLng(lat, lng),
          zoom: zoom,
        );

        _animateCamera(updatedCameraPos);
        locCubit.updateLastLocation(LatLng(lat, lng));
      },
    );
  }

  Future<void> _animateCamera(CameraPosition updatedCameraPos) async {
    final controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(updatedCameraPos));
  }

  void _handleTap(
    BuildContext context,
    ValueNotifier<bool> textFieldFocus,
    FocusNode focusNode,
    LatLng latLng,
    bool canCreateStory,
  ) {
    _onMapTap(context, textFieldFocus, focusNode);

    if (canCreateStory) {
      showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (_) => CreateStoryDialog(latLng),
      );
    }
  }

  void _handleCameraMoveStart(
    BuildContext context,
    ValueNotifier<bool> textFieldFocus,
    FocusNode focusNode,
  ) {
    _onMapTap(context, textFieldFocus, focusNode);
  }

  void _handleLongPress(
    BuildContext context,
    ValueNotifier<bool> textFieldFocus,
    FocusNode focusNode,
  ) {
    _onMapTap(context, textFieldFocus, focusNode);
  }

  void _onMapTap(
    BuildContext context,
    ValueNotifier<bool> textFieldFocus,
    FocusNode focusNode,
  ) {
    final bottomNavCubit = context.bloc<BottomnavCubit>();
    if (bottomNavCubit.state.showMainMenu) {
      bottomNavCubit.hideMainMenu();
      bottomNavCubit.tapOnMap();
    }
    if (textFieldFocus.value) focusNode.unfocus();
  }
}

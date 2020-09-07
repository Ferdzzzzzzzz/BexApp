/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get logo => const AssetGenImage('assets/images/LOGO.png');
  AssetGenImage get bex => const AssetGenImage('assets/images/BEX.png');
  AssetGenImage get background =>
      const AssetGenImage('assets/images/BACKGROUND.png');
  AssetGenImage get aboutBackground =>
      const AssetGenImage('assets/images/ABOUT_BACKGROUND.png');
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  AssetGenImage get navbarLocationOutline =>
      const AssetGenImage('assets/icons/navbar_location_outline.png');
  AssetGenImage get navbarLocation =>
      const AssetGenImage('assets/icons/navbar_location.png');
  AssetGenImage get locationYellow =>
      const AssetGenImage('assets/icons/location_yellow.png');
  AssetGenImage get locationOrange =>
      const AssetGenImage('assets/icons/location_orange.png');
  AssetGenImage get locationBlue =>
      const AssetGenImage('assets/icons/location_blue.png');
  AssetGenImage get navbarHelpOutline =>
      const AssetGenImage('assets/icons/navbar_help_outline.png');
  AssetGenImage get navbarHelpGreyed =>
      const AssetGenImage('assets/icons/navbar_help_greyed.png');
  AssetGenImage get navbarHelp =>
      const AssetGenImage('assets/icons/navbar_help.png');
  AssetGenImage get navbarHome =>
      const AssetGenImage('assets/icons/navbar_home.png');
  AssetGenImage get navbarHomeOutline =>
      const AssetGenImage('assets/icons/navbar_home_outline.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName)
      : _assetName = assetName,
        super(assetName);
  final String _assetName;

  Image image({
    ImageFrameBuilder frameBuilder,
    ImageLoadingBuilder loadingBuilder,
    ImageErrorWidgetBuilder errorBuilder,
    String semanticLabel,
    bool excludeFromSemantics = false,
    double width,
    double height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => _assetName;
}

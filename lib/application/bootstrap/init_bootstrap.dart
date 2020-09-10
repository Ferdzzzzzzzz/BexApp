import 'package:Bex/application/bootstrap/bootstrap_cubit.dart';
import 'package:Bex/sl.dart';
import 'package:hive/hive.dart';

const hiveBoxName = 'BexBox';

Future<void> initBootstrap() async {
  await Hive.openBox<dynamic>(hiveBoxName);
  sl.registerFactory(() => BootstrapCubit(sl()));
}

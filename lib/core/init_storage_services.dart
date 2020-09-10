import 'package:Bex/domain/bootstrap/i_storage_facade.dart';
import 'package:Bex/infrastructure/bootstrap/hive_facade.dart';
import 'package:Bex/sl.dart';

void initStorageServices() {
  sl.registerSingleton<IStorageFacade>(HiveFacade());
}

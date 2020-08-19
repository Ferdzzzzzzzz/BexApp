import 'package:bex_app/application/bootstrap/init_bootstrap.dart';
import 'package:bex_app/domain/bootstrap/i_storage_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';

const storageKey = 'hasTypeOne';

class HiveFacade extends IStorageFacade {
  @override
  Option<bool> getBootstrapSettings() {
    final box = Hive.box<dynamic>(hiveBoxName);

    if (!box.containsKey(storageKey)) return none();

    final bool hasTypeOne = box.get(storageKey) as bool;

    return some(hasTypeOne);
  }

  @override
  void setBootstrapSettings({bool hasTypeOne}) {
    final box = Hive.box<dynamic>(hiveBoxName);
    box.put(storageKey, hasTypeOne);
  }
}

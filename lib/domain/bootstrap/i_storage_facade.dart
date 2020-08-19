import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class IStorageFacade {
  Option<bool> getBootstrapSettings();

  void setBootstrapSettings({
    @required bool hasTypeOne,
  });
}

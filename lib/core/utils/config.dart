import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';
part 'config.g.dart';

Future<ConfigEntity> initializeConfig() async {
  final jsonString = await rootBundle.loadString('config/app_config.json');
  return ConfigEntity.fromJson(jsonDecode(jsonString) as Map<String, dynamic>);
}

StateProvider<ConfigEntity> configProvider;

@freezed
abstract class ConfigEntity with _$ConfigEntity {
  const factory ConfigEntity({
    @required String gcpKey,
  }) = _ConfigEntity;

  factory ConfigEntity.fromJson(Map<String, dynamic> json) =>
      _$ConfigEntityFromJson(json);
}

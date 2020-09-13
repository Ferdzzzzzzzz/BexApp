import 'package:Bex/presentation/app_widget.dart';
import 'package:Bex/sl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:Bex/core/utils/config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  final config = await initializeConfig();
  configProvider = StateProvider<ConfigEntity>((_) => config);

  await Hive.initFlutter();
  await setupSl();

  runApp(ProviderScope(child: MyApp(config)));
}

class MyApp extends HookWidget {
  final ConfigEntity config;

  const MyApp(this.config);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bex',
      home: AppWidget(),
    );
  }
}

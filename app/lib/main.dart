import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'core/config/app_config.dart';
import 'core/services/app_service.dart';
import 'core/storage/app_storage.dart';
import 'routes/router/app_router.dart';

import 'features/home/presentation/pages/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppService.initialize();
  await AppStorage.initialize();
  await AppRouter.initialize();

  runApp(const OnyxApp());
}

class OnyxApp extends StatelessWidget {
  const OnyxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,

      home: const HomeScreen(),
    );
  }
}

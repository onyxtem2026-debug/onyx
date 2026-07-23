import 'package:flutter/material.dart';

import '../config/app_config.dart';
import '../config/app_theme.dart';

class OnyxApp extends StatelessWidget {
  const OnyxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      home: const Scaffold(
        body: Center(
          child: Text(
            'ONYX',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

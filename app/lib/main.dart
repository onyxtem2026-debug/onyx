import 'package:flutter/material.dart';
import 'screens/main_screen.dart'; // استدعاء ملف التنقل الرئيسي

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ONYX App',
      theme: ThemeData.dark(), // ثيم أسود افتراضي
      home: const MainScreen(), // تعيين الشاشة الرئيسية كـ MainScreen
    );
  }
}

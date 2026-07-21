import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    _initialize();
  }

  Future<void> _initialize() async {
    await Future.delayed(const Duration(seconds: 3));

    // TODO:
    // هنا لاحقًا سنفحص:
    // هل المستخدم مسجل دخول؟
    // إذا نعم → Home
    // إذا لا → Login
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'ONYX',
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),
      ),
    );
  }
}

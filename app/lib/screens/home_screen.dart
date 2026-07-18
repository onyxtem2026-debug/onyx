import 'package:flutter/material.dart';
import '../widgets/onyx_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08080F),

      appBar: const OnyxAppBar(),

      body: const Center(
        child: Text(
          "Welcome to ONYX",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

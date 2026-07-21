import 'package:flutter/material.dart';

/// ============================================================
/// ONYX APP
/// Global Loading Widget
/// ============================================================
/// Reusable loading indicator used across the application.
/// ============================================================

class AppLoading extends StatelessWidget {
  const AppLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

import 'package:flutter/material.dart';

class OnyxAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const OnyxAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF08080F),
      elevation: 0,
      centerTitle: true,
      title: const Text(
        "ONYX",
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

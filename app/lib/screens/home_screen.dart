import 'package:flutter/material.dart';
import '../widgets/onyx_appbar.dart';
import '../widgets/stories_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08080F),

      appBar: const OnyxAppBar(),

      body: const Column(
        children: [
          SizedBox(height: 8),

          StoriesWidget(),

          Expanded(
            child: Center(
              child: Text(
                "منشورات ONYX قريباً...",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

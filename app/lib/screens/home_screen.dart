import 'package:flutter/material.dart';
import '../widgets/onyx_appbar.dart';
import '../widgets/stories_widget.dart';
import '../widgets/post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08080F),

      appBar: const OnyxAppBar(),

      body: ListView(
        children: const [
          SizedBox(height: 8),

          StoriesWidget(),

          SizedBox(height: 8),

          PostCard(),
          PostCard(),
          PostCard(),
        ],
      ),
    );
  }
}

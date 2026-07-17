import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('mustafa_ali', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(radius: 40, backgroundColor: Colors.grey),
                SizedBox(width: 40),
                Row(
                  children: [
                    _buildStat('5', 'منشورات'),
                    SizedBox(width: 20),
                    _buildStat('150', 'متابعون'),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(alignment: Alignment.centerLeft, child: Text('مرحباً بكم في ONYX 🔥', style: TextStyle(color: Colors.white))),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 2),
              itemBuilder: (context, index) => Container(color: Colors.white12),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStat(String count, String label) {
    return Column(
      children: [
        Text(count, style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}


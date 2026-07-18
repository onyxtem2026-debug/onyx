import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF15151F),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage("https://i.pravatar.cc/150"),
            ),
            title: Text(
              "ONYX Official",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "Verified Account",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(
              Icons.verified,
              color: Colors.blue,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(
              "https://picsum.photos/700/500",
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(14),
            child: Text(
              "Welcome to ONYX 🚀",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

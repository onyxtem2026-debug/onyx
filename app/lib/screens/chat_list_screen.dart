import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08080F),

      appBar: AppBar(
        backgroundColor: const Color(0xFF08080F),
        elevation: 0,
        title: const Text(
          "Messages",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit_square, color: Colors.white),
          ),
        ],
      ),

      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Search messages...",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: const Color(0xFF15151F),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView(
              children: const [

                ChatTile(
                  name: "ONYX Official",
                  message: "Welcome to ONYX 🚀",
                  time: "Now",
                  verified: true,
                  unread: 2,
                ),

                ChatTile(
                  name: "Ahmed",
                  message: "How are you?",
                  time: "5m",
                  unread: 1,
                ),

                ChatTile(
                  name: "Sara",
                  message: "See you tomorrow ❤️",
                  time: "12m",
                ),

                ChatTile(
                  name: "Mustafa",
                  message: "Thanks bro 🔥",
                  time: "1h",
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {

  final String name;
  final String message;
  final String time;
  final bool verified;
  final int unread;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    this.verified = false,
    this.unread = 0,
  });

  @override
  Widget build(BuildContext context) {

    return ListTile(

      leading: const CircleAvatar(
        radius: 28,
        backgroundColor: Color(0xFF7C4DFF),
        child: Icon(Icons.person,color: Colors.white),
      ),

      title: Row(
        children: [

          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          if (verified)
            const Padding(
              padding: EdgeInsets.only(left: 4),
              child: Icon(
                Icons.verified,
                color: Colors.blue,
                size: 18,
              ),
            ),

        ],
      ),

      subtitle: Text(
        message,
        style: const TextStyle(
          color: Colors.white70,
        ),
      ),

      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            time,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),

          if (unread > 0)
            Container(
              margin: const EdgeInsets.only(top: 6),
              width: 22,
              height: 22,
              decoration: const BoxDecoration(
                color: Color(0xFF7C4DFF),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  unread.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

        ],
      ),

      onTap: () {},
    );
  }
}

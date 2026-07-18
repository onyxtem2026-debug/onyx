import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08080F),

      appBar: AppBar(
        backgroundColor: const Color(0xFF08080F),
        elevation: 0,

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),

        title: const Row(
          children: [

            CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xFF7C4DFF),
              child: Icon(Icons.person,color: Colors.white),
            ),

            SizedBox(width: 12),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [

                    Text(
                      "ONYX Official",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(width: 4),

                    Icon(
                      Icons.verified,
                      color: Colors.blue,
                      size: 18,
                    ),

                  ],
                ),

                Text(
                  "Online",
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 12,
                  ),
                ),

              ],
            ),

          ],
        ),

        actions: [

          IconButton(
            icon: const Icon(Icons.call,color: Colors.white),
            onPressed: () {},
          ),

          IconButton(
            icon: const Icon(Icons.videocam,color: Colors.white),
            onPressed: () {},
          ),

          IconButton(
            icon: const Icon(Icons.more_vert,color: Colors.white),
            onPressed: () {},
          ),

        ],
      ),

      body: Column(
        children: [

          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [

                _received("Welcome to ONYX 👋"),

                _sent("Thank you ❤️"),

                _received("How can we help you today?"),

              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF15151F),
            ),

            child: Row(
              children: [

                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.white,
                  ),
                ),

                Expanded(
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Write a message...",
                      hintStyle:
                          const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: const Color(0xFF08080F),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send,
                    color: Color(0xFF7C4DFF),
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget _received(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xFF15151F),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _sent(String text) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: const Color(0xFF7C4DFF),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

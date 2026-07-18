import 'package:flutter/material.dart';

class LiveChatWidget extends StatelessWidget {
  const LiveChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.35),
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListView(
        reverse: true,
        children: const [

          ChatMessage(
            name: "Ahmed",
            message: "🔥 Amazing live!",
          ),

          ChatMessage(
            name: "Sara",
            message: "❤️ Greetings from Iraq",
          ),

          ChatMessage(
            name: "ONYX Official",
            message: "Welcome everyone.",
            verified: true,
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {

  final String name;
  final String message;
  final bool verified;

  const ChatMessage({
    super.key,
    required this.name,
    required this.message,
    this.verified = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: RichText(
        text: TextSpan(
          children: [

            TextSpan(
              text: name,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            if (verified)
              const WidgetSpan(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(
                    Icons.verified,
                    size: 15,
                    color: Colors.blue,
                  ),
                ),
              ),

            TextSpan(
              text: "  $message",
              style: const TextStyle(
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LiveTopSupportersWidget extends StatelessWidget {
  const LiveTopSupportersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.35),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: const [

          SupporterAvatar(
            name: "Ali",
            amount: "\$250",
          ),

          SizedBox(width: 12),

          SupporterAvatar(
            name: "Sara",
            amount: "\$180",
          ),

          SizedBox(width: 12),

          SupporterAvatar(
            name: "Ahmed",
            amount: "\$120",
          ),

        ],
      ),
    );
  }
}

class SupporterAvatar extends StatelessWidget {

  final String name;
  final String amount;

  const SupporterAvatar({
    super.key,
    required this.name,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Stack(
          children: [

            const CircleAvatar(
              radius: 18,
              backgroundColor: Color(0xFF7C4DFF),
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),

            Positioned(
              right: -2,
              bottom: -2,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.workspace_premium,
                  color: Colors.black,
                  size: 12,
                ),
              ),
            ),

          ],
        ),

        const SizedBox(height: 4),

        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(
          amount,
          style: const TextStyle(
            color: Colors.greenAccent,
            fontSize: 10,
          ),
        ),

      ],
    );
  }
}

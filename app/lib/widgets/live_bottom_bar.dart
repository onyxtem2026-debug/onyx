import 'package:flutter/material.dart';

class LiveBottomBar extends StatelessWidget {
  const LiveBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 74,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.45),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [

            Expanded(
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  children: [

                    SizedBox(width: 14),

                    Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.white70,
                      size: 20,
                    ),

                    SizedBox(width: 8),

                    Text(
                      "Write a comment...",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),

                  ],
                ),
              ),
            ),

            const SizedBox(width: 10),

            _ActionButton(
              icon: Icons.favorite,
              color: Colors.red,
              onTap: () {},
            ),

            const SizedBox(width: 8),

            _ActionButton(
              icon: Icons.card_giftcard,
              color: Colors.amber,
              onTap: () {},
            ),

            const SizedBox(width: 8),

            _ActionButton(
              icon: Icons.payments,
              color: Colors.green,
              onTap: () {},
            ),

            const SizedBox(width: 8),

            _ActionButton(
              icon: Icons.person_add_alt_1,
              color: Colors.blue,
              onTap: () {},
            ),

            const SizedBox(width: 8),

            _ActionButton(
              icon: Icons.share,
              color: Colors.white,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: onTap,
      child: Container(
        width: 46,
        height: 46,
        decoration: BoxDecoration(
          color: Colors.white10,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: color,
          size: 23,
        ),
      ),
    );
  }
}

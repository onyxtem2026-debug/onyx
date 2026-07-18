import 'package:flutter/material.dart';

class LiveEnergyWidget extends StatelessWidget {
  final double energy;
  final int taps;

  const LiveEnergyWidget({
    super.key,
    this.energy = 0.72,
    this.taps = 18420,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.35),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(
                Icons.bolt,
                color: Colors.amber,
                size: 22,
              ),
              SizedBox(width: 8),
              Text(
                "ONYX Energy",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: LinearProgressIndicator(
              value: energy,
              minHeight: 10,
              backgroundColor: Colors.white12,
              valueColor: const AlwaysStoppedAnimation(
                Color(0xFF7C4DFF),
              ),
            ),
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 18,
              ),

              const SizedBox(width: 6),

              Text(
                "$taps Tap",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

              Text(
                "${(energy * 100).toInt()}%",
                style: const TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

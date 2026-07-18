import 'package:flutter/material.dart';

class GiftsStoreScreen extends StatelessWidget {
  const GiftsStoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08080F),

      appBar: AppBar(
        backgroundColor: const Color(0xFF08080F),
        elevation: 0,
        title: const Text(
          "ONYX Gifts",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                "💎 12,500",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),

      body: GridView.count(
        padding: const EdgeInsets.all(18),
        crossAxisCount: 3,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        childAspectRatio: .82,
        children: const [

          GiftCard("🌹","Rose","10"),
          GiftCard("❤️","Heart","20"),
          GiftCard("☕","Coffee","50"),
          GiftCard("🎂","Cake","100"),
          GiftCard("💍","Ring","250"),
          GiftCard("👑","Crown","500"),
          GiftCard("🦁","Lion","1500"),
          GiftCard("🏎️","Super Car","3000"),
          GiftCard("✈️","Private Jet","5000"),
          GiftCard("🛥️","Luxury Yacht","8000"),
          GiftCard("🏰","Castle","15000"),
          GiftCard("🚀","Galaxy","50000"),

        ],
      ),
    );
  }
}

class GiftCard extends StatelessWidget {

  final String emoji;
  final String name;
  final String coins;

  const GiftCard(
    this.emoji,
    this.name,
    this.coins,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF15151F),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white10,
        ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            emoji,
            style: const TextStyle(
              fontSize: 42,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF7C4DFF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "$coins Coins",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),

        ],
      ),
    );
  }
}

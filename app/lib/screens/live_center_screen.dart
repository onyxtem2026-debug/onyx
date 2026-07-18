import 'package:flutter/material.dart';

class LiveCenterScreen extends StatelessWidget {
  const LiveCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08080F),

      appBar: AppBar(
        backgroundColor: const Color(0xFF08080F),
        elevation: 0,
        title: const Text(
          "Live Center",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [

          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF15151F),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const Text(
                  "Ready to Go Live?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Create professional live streams and earn from your audience.",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7C4DFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.live_tv),
                    label: const Text(
                      "Start Live",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "Live Tools",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1.1,
            children: const [

              _Tool(Icons.schedule,"Schedule"),
              _Tool(Icons.people,"Invite Guests"),
              _Tool(Icons.notifications,"Notify Followers"),
              _Tool(Icons.card_giftcard,"Gifts"),
              _Tool(Icons.favorite,"Tap Counter"),
              _Tool(Icons.payments,"Support"),
              _Tool(Icons.workspace_premium,"VIP Live"),
              _Tool(Icons.bar_chart,"Analytics"),

            ],
          ),

          const SizedBox(height: 25),

          const Text(
            "Last Live",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          _info("Views", "0"),
          _info("Likes", "0"),
          _info("Gifts", "0"),
          _info("Support", "\$0"),
          _info("Followers Gained", "0"),

        ],
      ),
    );
  }

  Widget _info(String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xFF15151F),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [

          Text(
            title,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 17,
            ),
          ),

          const Spacer(),

          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

        ],
      ),
    );
  }
}

class _Tool extends StatelessWidget {

  final IconData icon;
  final String title;خ

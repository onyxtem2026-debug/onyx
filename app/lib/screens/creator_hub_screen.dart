import 'package:flutter/material.dart';

class CreatorHubScreen extends StatelessWidget {
  const CreatorHubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08080F),

      appBar: AppBar(
        backgroundColor: const Color(0xFF08080F),
        elevation: 0,
        title: const Text(
          "Creator Hub",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF15151F),
                borderRadius: BorderRadius.circular(22),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Today's Earnings",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "\$0.00",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Start creating content to earn money.",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),

                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Creator Tools",
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
              childAspectRatio: 1.15,
              children: const [

                CreatorCard(
                  Icons.live_tv,
                  "Live Center",
                  Color(0xFF7C4DFF),
                ),

                CreatorCard(
                  Icons.bar_chart,
                  "Analytics",
                  Colors.blue,
                ),

                CreatorCard(
                  Icons.payments,
                  "Earnings",
                  Colors.green,
                ),

                CreatorCard(
                  Icons.card_giftcard,
                  "Gifts",
                  Colors.orange,
                ),

                CreatorCard(
                  Icons.groups,
                  "Subscribers",
                  Colors.pink,
                ),

                CreatorCard(
                  Icons.workspace_premium,
                  "Verification",
                  Colors.amber,
                ),

                CreatorCard(
                  Icons.campaign,
                  "Sponsors",
                  Colors.cyan,
                ),

                CreatorCard(
                  Icons.smart_toy,
                  "AI Assistant",
                  Colors.deepPurple,
                ),

              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Quick Statistics",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 15),

            const StatTile(
              "Followers",
              "0",
            ),

            const StatTile(
              "Live Views",
              "0",
            ),

            const StatTile(
              "Total Likes",
              "0",
            ),

            const StatTile(
              "Coins",
              "0",
            ),

          ],
        ),
      ),
    );
  }
}

class CreatorCard extends StatelessWidget {

  final IconData icon;
  final String title;
  final Color color;

  const CreatorCard(
    this.icon,
    this.title,
    this.color,
    {super.key},
  );

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF15151F),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Icon(
            icon,
            color: color,
            size: 42,
          ),

          const SizedBox(height: 15),

          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}

class StatTile extends StatelessWidget {

  final String title;
  final String value;

  const StatTile(
    this.title,
    this.value,
    {super.key},
  );

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 16,
      ),

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
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}

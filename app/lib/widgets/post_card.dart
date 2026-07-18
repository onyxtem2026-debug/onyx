import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLiked = false;
  int likes = 8532;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF15151F),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/300",
              ),
            ),
            title: Row(
              children: [
                Text(
                  "ONYX Official",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 18,
                ),
              ],
            ),
            subtitle: Text(
              "Baghdad • 2 min",
              style: TextStyle(color: Colors.grey),
            ),
          ),

          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(
              "https://picsum.photos/700/500",
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;

                      if (isLiked) {
                        likes++;
                      } else {
                        likes--;
                      }
                    });
                  },
                  icon: Icon(
                    isLiked
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color:
                        isLiked ? Colors.red : Colors.white,
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send_outlined,
                    color: Colors.white,
                  ),
                ),

                const Spacer(),

                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              "$likes Likes",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.fromLTRB(
              14,
              8,
              14,
              16,
            ),
            child: Text(
              "🚀 Welcome to ONYX. The next generation social platform.",
              style: TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

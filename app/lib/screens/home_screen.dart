import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('ONYX', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white)),
        actions: [
          IconButton(icon: const Icon(Icons.add_box_outlined, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // 1. قسم الستوري مع أيقونة الموقع
          SizedBox(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(radius: 30, backgroundColor: Colors.grey),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            decoration: const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                            child: const Icon(Icons.location_on, color: Colors.white, size: 16),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text('قصتي', style: TextStyle(color: Colors.white, fontSize: 12)),
                  ],
                ),
              ),
            ),
          ),
          
          // 2. قائمة المنشورات
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListTile(
                      leading: CircleAvatar(backgroundColor: Colors.grey, child: Icon(Icons.person, color: Colors.white)),
                      title: Text('mustafa_ali', style: TextStyle(color: Colors.white)),
                    ),
                    Image.network('https://picsum.photos/400/300?random=$index'),
                    Row(
                      children: [
                        IconButton(icon: const Icon(Icons.favorite, color: Colors.red), onPressed: () {}), // لايك أحمر
                        IconButton(icon: const Icon(Icons.chat_bubble_outline, color: Colors.white), onPressed: () {}), // تعليق
                        IconButton(icon: const Icon(Icons.send_outlined, color: Colors.white), onPressed: () {}), // مشاركة
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                      child: Text('هذا منشور احترافي في ONYX! 🔥', style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

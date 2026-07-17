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
          
          // 2. قائمة المنشورات (فارغة حالياً للتركيز على الستوري)
          const Expanded(
            child: Center(
              child: Text('جاري تحميل المنشورات...', style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

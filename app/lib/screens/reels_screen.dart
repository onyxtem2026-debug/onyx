import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical, // هذا السطر هو سر التمرير مثل تيك توك
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              // مكان الفيديو
              Container(color: Colors.primaries[index % Colors.primaries.length]),
              
              // أزرار التفاعل فوق الفيديو
              Positioned(
                right: 10,
                bottom: 100,
                child: Column(
                  children: [
                    const Icon(Icons.favorite, color: Colors.white, size: 40),
                    const Text('1.2M', style: TextStyle(color: Colors.white)),
                    const SizedBox(height: 20),
                    const Icon(Icons.comment, color: Colors.white, size: 40),
                    const Text('12K', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              
              // اسم المستخدم ووصف الفيديو
              const Positioned(
                left: 10,
                bottom: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('@mustafa_ali', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                    Text('أول فيديو في ONYX! 🔥', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

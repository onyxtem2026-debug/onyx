import 'package:flutter/material.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  // محاكاة قائمة الفيديوهات القصيرة (الريلز) للتجربة والتفاعل
  final List<Map<String, dynamic>> _mockReels = [
    {
      'username': '@mustafa_ali',
      'caption': 'أول تجربة رسمية لواجهة ريلز منصة ONYX العالمية! 🚀🔥 #onyx #flutter #reels',
      'likes': '18.4K',
      'comments': '412',
      'music': 'الصوت الأصلي - مصطفى علي',
      'color': 0xFF151515, // محاكاة خلفية الفيديو بلون داكن
    },
    {
      'username': '@onyx_dev',
      'caption': 'نظام التمرير الرأسي فائق السرعة جاهز للعمل بنسبة 100% 💻✨ #programming #mobile_app',
      'likes': '9.8K',
      'comments': '185',
      'music': 'موسيقى حماسية - ONYX Beats',
      'color': 0xFF1E1E1E,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical, // التمرير الرأسي اللانهائي مثل تيك توك
        itemCount: _mockReels.length,
        itemBuilder: (context, index) {
          final reel = _mockReels[index];
          return Stack(
            children: [
              // 1. خلفية مشغل الفيديو (مؤقتاً شاشة بلون تفاعلي مع أيقونة تشغيل)
              Container(
                color: Color(reel['color']),
                child: const Center(
                  child: Icon(
                    Icons.play_circle_outline_rounded,
                    size: 80,
                    color: Colors.white24,
                  ),
                ),
              ),

              // 2. الأزرار الجانبية التفاعلية (لايك، تعليق، مشاركة)
              Positioned(
                right: 15,
                bottom: 60,
                child: Column(
                  children: [
                    _buildActionButton(Icons.favorite_rounded, reel['likes'], Colors.redAccent),
                    const SizedBox(height: 20),
                    _buildActionButton(Icons.chat_bubble_rounded, reel['comments'], Colors.white),
                    const SizedBox(height: 20),
                    _buildActionButton(Icons.share_rounded, 'مشاركة', Colors.white),
                  ],
                ),
              ),

              // 3. تفاصيل المنشور (اسم المستخدم، الوصف، والموسيقى)
              Positioned(
                left: 15,
                bottom: 20,
                right: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // اسم المستخدم مع علامة التوثيق
                    Row(
                      children: [
                        Text(
                          reel['username'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Icon(Icons.verified_rounded, color: Color(0xFFFFD700), size: 16),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // الوصف والكابشن
                    Text(
                      reel['caption'],
                      style: const TextStyle(color: Colors.white70, fontSize: 14),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    // شريط اسم الأغنية المتحرك
                    Row(
                      children: [
                        const Icon(Icons.music_note_rounded, color: Colors.white, size: 16),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            reel['music'],
                            style: const TextStyle(color: Colors.grey, fontSize: 13),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  // بناء أزرار التفاعل الجانبية بشكل متناسق واحترافي
  Widget _buildActionButton(IconData icon, String label, Color color) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(icon, color: color, size: 28),
            onPressed: () {
              // الأكشن التفاعلي سيتم ربطه لاحقاً بالسيرفر
            },
          ),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

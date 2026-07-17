import 'package:flutter/material.dart';

void main() {
  runApp(const OnyxApp());
}

class OnyxApp extends StatelessWidget {
  const OnyxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ONYX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D0D0D), // لون أسود أونيكس ملكي
        primaryColor: const Color(0xFFFFD700), // لون ذهبي مائل للأصفر للإضاءة والتفاعل
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFFFD700),
          secondary: Color(0xFF1F1F1F),
        ),
      ),
      home: const MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  // شاشات تجريبية لمحاكاة حركة التنقل داخل التطبيق
  final List<Widget> _screens = [
    const Center(child: Text('🏠 الشاشة الرئيسية (Instagram Style)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
    const Center(child: Text('🎬 ريلز وفيديوهات قصيرة (TikTok Style)', style: TextStyle(fontSize: 18, color: Color(0xFFFFD700), fontWeight: FontWeight.bold))),
    const Center(child: Text('➕ إضافة منشور جديد', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
    const Center(child: Text('💬 الرسائل والمحادثات الفورية', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
    const Center(child: Text('👤 الملف الشخصي والمتابعين', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ONYX',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF0D0D0D),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.send_rounded, color: Colors.white),
            onPressed: () {
              // سيتم ربطه لاحقاً بنظام المحادثات
            },
          ),
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF0D0D0D),
        selectedItemColor: const Color(0xFFFFD700),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_fill_rounded), label: 'الريلز'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: 'إضافة'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_rounded), label: 'الرسائل'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: 'الملف الشخصي'),
        ],
      ),
    );
  }
}

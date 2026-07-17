import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'reels_screen.dart';
import 'profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // قائمة الشاشات
  final List<Widget> _pages = [
    const HomeScreen(),
    const Center(child: Text("صفحة البحث", style: TextStyle(color: Colors.white))), // مؤقت
    const ReelsScreen(),
    const Center(child: Text("صفحة المتجر", style: TextStyle(color: Colors.white))), // مؤقت
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.play_arrow_outlined), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: ''),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: const CircleAvatar(radius: 12, backgroundImage: NetworkImage('https://i.pravatar.cc/150')),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

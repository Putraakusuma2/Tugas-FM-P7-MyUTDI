import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'widgets/menu_grid.dart';
import 'widgets/profile_card.dart';

/// Halaman utama aplikasi dengan BottomNavigationBar
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Indeks halaman yang dipilih
  final PageController _pageController = PageController(); // Controller untuk PageView

  // Daftar halaman
  final List<Widget> _pages = [
    // Halaman Menu Utama
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileCard(),
            SizedBox(height: 16),
            Text("Menu", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            MenuGrid(),
          ],
        ),
      ),
    ),
    // Halaman ProfilePage
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: Text(
            _currentIndex == 0 ? 'My UTDI' : 'Profile Mahasiswa',
            key: ValueKey<String>(_currentIndex == 0 ? 'My UTDI' : 'Profile Mahasiswa'),
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ), // Menampilkan halaman berdasarkan indeks
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Mengubah halaman saat item diklik
            _pageController.jumpToPage(index); // Navigasi ke halaman yang dipilih
          });
        },
      ),
    );
  }
}

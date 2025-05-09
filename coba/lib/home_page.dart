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
  final PageController _pageController = PageController(); 

  // Daftar halaman
  final List<Widget> _pages = [
    // Halaman Menu Utama
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0), // Memberikan jarak di sekitar konten
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Konten rata kiri
          children: [
            ProfileCard(), // Menampilkan kartu profil
            SizedBox(height: 16), // Jarak antara elemen
            Text(
              "Menu", // Judul menu
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8), // Jarak antara judul dan grid menu
            MenuGrid(), // Menampilkan menu dalam bentuk grid
          ],
        ),
      ),
    ),
    ProfilePage(), // Menampilkan halaman profil mahasiswa
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        // Memberikan animasi perubahan pada title saat pindah halaman
        title: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200), // Durasi animasi
          child: Text(
            _currentIndex == 0 ? 'My UTDI' : 'Profile Mahasiswa', // Judul dinamis
            key: ValueKey<String>(
              _currentIndex == 0 ? 'My UTDI' : 'Profile Mahasiswa',
            ), // Key untuk membedakan judul
          ),
        ),
      ),
      body: PageView(
        controller: _pageController, // Controller untuk mengelola halaman
        onPageChanged: (index) {
          // Mengubah indeks halaman saat halaman di-swipe
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages, // Menampilkan halaman berdasarkan indeks
      ),
      bottomNavigationBar: BottomNavigationBar(
        //menambahkan naviasi bar di bawah dan icon home dan profile di dalamnya
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: 'Home', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'Profile', 
          ),
        ],
        currentIndex: _currentIndex, // Indeks halaman yang dipilih
        selectedItemColor: Colors.orange, 
        unselectedItemColor: Colors.grey, 
        onTap: (index) {

          // Aksi saat item di BottomNavigationBar diklik
          setState(() {
            _currentIndex = index; 
            _pageController.jumpToPage(index); // Navigasi ke halaman yang dipilih
          });
        },
      ),
    );
  }
}

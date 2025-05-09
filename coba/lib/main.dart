import 'package:flutter/material.dart';
import 'home_page.dart'; // Import halaman utama
import 'profile_page.dart'; // Import halaman profil

void main() {
  // Fungsi utama aplikasi Flutter
  // Memulai aplikasi dengan menjalankan widget MyApp
  runApp(MyApp());
}

/// Widget utama aplikasi (StatelessWidget)
/// Digunakan untuk mengatur tema dan navigasi aplikasi
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My UTDI', // Judul aplikasi
      theme: ThemeData(
        primarySwatch: Colors.orange, // Tema utama aplikasi dengan warna oranye
      ),
      home: HomePage(), // Halaman utama aplikasi
      debugShowCheckedModeBanner: false, // Menghilangkan label debug di pojok kanan atas
      routes: {
        '/profile': (context) => ProfilePage(), // Route untuk navigasi ke halaman ProfilePage
      },
    );
  }
}

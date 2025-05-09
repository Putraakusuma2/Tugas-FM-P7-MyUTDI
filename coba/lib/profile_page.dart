import 'package:flutter/material.dart';

/// Halaman Profil Mahasiswa
/// Menampilkan informasi mahasiswa seperti nama, NIM, program studi, dan email.
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Struktur utama halaman menggunakan Scaffold
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Memberikan jarak di sekitar konten
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Konten rata kiri
          children: [
            // Foto Profil
            Center(
              child: CircleAvatar(
                radius: 50, // Ukuran lingkaran avatar
                backgroundImage: AssetImage('assets/images/profile.png'), 
              ),
            ),
            const SizedBox(height: 16), // Jarak antara foto profil dan teks
          
            const Text(
              'Nama:', // Label untuk nama
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), // Gaya teks
            ),
            const Text('Muhammad Luthfi Kusuma Putra'), 
            const SizedBox(height: 8), // Jarak antar elemen
            const Text(
              'NIM:', 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), 
            ),
            const Text('225410068'), 
            const SizedBox(height: 8), 
            const Text(
              'Program Studi:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), 
            ),
            const Text('Informatika'), 
            const SizedBox(height: 8), 
            const Text(
              'Email:', 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16), 
            ),
            const Text('luthfi.kusuma@utdi.ac.id'),
          ],
        ),
      ),
    );
  }
}
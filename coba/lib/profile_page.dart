import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Foto Profil
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.png'), // Gambar profil
              ),
            ),
            const SizedBox(height: 16),
            // Informasi Mahasiswa
            const Text(
              'Nama:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Text('Muhammad Luthfi Kusuma Putra'),
            const SizedBox(height: 8),
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
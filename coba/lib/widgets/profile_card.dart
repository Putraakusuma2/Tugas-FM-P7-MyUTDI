import 'package:flutter/material.dart';

/// Widget kartu profil mahasiswa
/// Digunakan untuk menampilkan informasi singkat tentang mahasiswa, seperti nama, NIM, dan foto profil.
class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // Memberikan padding di dalam kartu
      padding: EdgeInsets.all(12),
      // Memberikan dekorasi pada kartu, seperti warna latar belakang dan border radius
      decoration: BoxDecoration(
        color: Colors.grey[300], // Warna latar belakang kartu
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Bagian kiri: Informasi teks (nama dan NIM)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Teks rata kiri
              children: [
              
                Text(
                  "Muhammad Luthfi Kusuma Putra",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
            
                Text("225410068 - INFORMATIKA"),
              ],
            ),
          ),
          // Bagian kanan: Foto profil
          CircleAvatar(
            radius: 24, // Ukuran lingkaran avatar
            backgroundImage: AssetImage('assets/images/profile.png'), 
          ),
        ],
      ),
    );
  }
}

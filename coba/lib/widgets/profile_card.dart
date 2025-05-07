import 'package:flutter/material.dart';

/// Widget kartu profil mahasiswa
class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Muhammad Luthfi Kusuma Putra", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("225410068 - INFORMATIKA"),
              ],
            ),
          ),
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage('assets/images/profile.png'), // placeholder
          )
        ],
      ),
    );
  }
}

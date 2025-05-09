import 'package:flutter/material.dart';

/// Widget grid menu 3x3
class MenuGrid extends StatelessWidget {
  // Daftar menu dengan judul dan ikon
  final List<Map<String, dynamic>> menuItems = [
    {"title": "KRS", "icon": Icons.school}, 
    {"title": "KHS", "icon": Icons.grade}, 
    {"title": "Jadwal", "icon": Icons.schedule},
    {"title": "Presensi", "icon": Icons.check_circle},
    {"title": "Nilai", "icon": Icons.bar_chart}, 
    {"title": "Tagihan", "icon": Icons.attach_money}, 
    {"title": "Info", "icon": Icons.info}, 
    {"title": "Forum", "icon": Icons.forum},
    {"title": "Logout", "icon": Icons.logout}, 
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // Membatasi ukuran grid agar tidak melebihi konten
      physics: NeverScrollableScrollPhysics(), // Menonaktifkan scroll pada grid
      itemCount: menuItems.length, // Jumlah item dalam grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Jumlah kolom dalam grid
        mainAxisSpacing: 12, // Jarak vertikal antar item
        crossAxisSpacing: 12, // Jarak horizontal antar item
        childAspectRatio: 1, // Rasio aspek untuk setiap item
      ),
      itemBuilder: (context, index) {
        return InkWell(
          // Aksi saat item diklik
          onTap: () {
            if (menuItems[index]['title'] == 'Logout') {
              // Jika menu yang diklik adalah Logout, tampilkan dialog konfirmasi
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Konfirmasi Logout'), // Judul dialog
                  content: Text('Apakah Anda yakin ingin logout?'), // Isi dialog
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context), // Tutup dialog
                      child: Text('Batal'), // Tombol Batal
                    ),
                    TextButton(
                      onPressed: () {
                        // Tambahkan logika logout di sini
                        Navigator.pop(context); // Tutup dialog
                      },
                      child: Text('Logout'), // Tombol Logout
                    ),
                  ],
                ),
              );
            } else {
              // Jika menu yang diklik bukan Logout, tampilkan SnackBar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Klik: ${menuItems[index]['title']}")), // Pesan SnackBar
              );
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Pusatkan konten secara vertikal
            children: [
              Icon(
                menuItems[index]['icon'], // Ikon menu
                size: 32, // Ukuran ikon
                color: Colors.black, // Warna ikon
              ),
              const SizedBox(height: 8), // Jarak antara ikon dan teks
              Text(
                menuItems[index]['title'], // Judul menu
                textAlign: TextAlign.center, // Teks rata tengah
                style: const TextStyle(color: Colors.black), // Warna teks
              ),
            ],
          ),
        );
      },
    );
  }
}

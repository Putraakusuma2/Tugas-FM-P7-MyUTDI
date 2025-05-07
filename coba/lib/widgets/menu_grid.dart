import 'package:flutter/material.dart';

/// Widget grid menu 3x3
class MenuGrid extends StatelessWidget {
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
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: menuItems.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (menuItems[index]['title'] == 'Logout') {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Konfirmasi Logout'),
                  content: Text('Apakah Anda yakin ingin logout?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Batal'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Tambahkan logika logout
                        Navigator.pop(context);
                      },
                      child: Text('Logout'),
                    ),
                  ],
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Klik: ${menuItems[index]['title']}")),
              );
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                menuItems[index]['icon'],
                size: 32,
                color: Colors.black,
              ),
              const SizedBox(height: 8),
              Text(
                menuItems[index]['title'],
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        );
      },
    );
  }
}

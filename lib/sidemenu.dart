import 'package:flutter/material.dart';
import 'package:tugas_3/about_page.dart';
import 'package:tugas_3/bookmark_page.dart';
import 'package:tugas_3/home_page.dart';
import 'package:tugas_3/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({super.key});

  Future<String?> _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('username');
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: FutureBuilder<String?>(
        future: _loadUsername(),
        builder: (context, snapshot) {
          String? namauser = snapshot.data;

          return ListView(
            children: [
              Container(
                height: 100, 
                color: Colors.teal,
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor:
                          Colors.white,
                      child: Text(
                        namauser != null && namauser.isNotEmpty
                            ? namauser[0].toUpperCase()
                            : 'P',
                        style:
                            const TextStyle(fontSize: 24, color: Colors.teal),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      namauser ??
                          'Guest', // Menampilkan nama pengguna atau 'Guest'
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  // Navigasi ke halaman Home
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.info),
                title: const Text('About'),
                onTap: () {
                  // Navigasi ke halaman About
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutPage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.bookmark),
                title: const Text('Bookmark'),
                onTap: () {
                  // Navigasi ke halaman Bookmark
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookmarkPage(),
                    ),
                  );
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

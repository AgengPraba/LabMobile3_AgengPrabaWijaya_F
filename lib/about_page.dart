import 'package:flutter/material.dart';
import 'package:tugas_3/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        backgroundColor: Colors.teal, 
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.teal[50],
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tentang Aplikasi eBook',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Aplikasi ini dirancang untuk memberikan akses mudah ke berbagai koleksi buku elektronik. Anda dapat menjelajahi, menandai, dan membaca buku favorit Anda di mana saja dan kapan saja.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Fitur Utama:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '• Menjelajahi koleksi buku\n'
              '• Menandai buku sebagai favorit\n'
              '• Antarmuka pengguna yang intuitif\n'
              '• Pembaruan rutin dengan buku baru\n',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Pengembang:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Aplikasi ini dikembangkan oleh Admin untuk memberikan kemudahan akses kepada pengguna dalam menikmati buku digital.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
      drawer: const Sidemenu(),
    );
  }
}

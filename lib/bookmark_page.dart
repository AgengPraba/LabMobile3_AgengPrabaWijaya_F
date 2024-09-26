import 'package:flutter/material.dart';
import 'package:tugas_3/sidemenu.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmark Page'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Colors.teal[50],
        child: const Center(
          child: Text('Ini adalah halaman Bookmark'),
        ),
      ),
      drawer: const Sidemenu(),
    );
  }
}

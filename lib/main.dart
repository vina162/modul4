import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // (a) Latar belakang gelap
      home: const MusicPlayer(),
    );
  }
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // (b) Judul aplikasi
      appBar: AppBar(
        title: const Text("Pemutar Musik"),
        centerTitle: true,
      ),

      // (c) Konten utama (kosong, fokus di control bar)
      body: const Center(
        child: Text(
          "Pemutar Musik",
          style: TextStyle(fontSize: 20),
        ),
      ),

      // (b & c) Control bar di bagian bawah
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        color: Colors.black54, // warna latar belakang control bar
        child: Row(
          children: [
            // (e) Tombol 1 - Shuffle
            const Expanded(
              child: Icon(
                Icons.shuffle,
                color: Colors.white,
              ),
            ),

            // (e) Tombol 2 - Previous
            const Expanded(
              child: Icon(
                Icons.skip_previous,
                color: Colors.white,
              ),
            ),

            // (f) Tombol 3 - Play (lebih besar)
            const Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Icon(
                Icons.play_circle_fill,
                color: Colors.white,
                size: 50,
              ),
            ),

            // (e) Tombol 4 - Next
            const Expanded(
              child: Icon(
                Icons.skip_next,
                color: Colors.white,
              ),
            ),

            // (e) Tombol 5 - Repeat
            const Expanded(
              child: Icon(
                Icons.repeat,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

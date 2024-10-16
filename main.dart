import 'package:flutter/material.dart';
// import 'package:latihan_movie/view/page/movie_category.dart';
// import 'package:latihan_movie/view/page/movie_page.dart';
// import 'package:latihan_movie/view/page/music_category.dart';
import 'package:latihan_movie/view/page/music_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MusicPage(
    );
  }
}

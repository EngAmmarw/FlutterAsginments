import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screaming_movie_app/screens/category_page.dart';
import 'package:screaming_movie_app/screens/home_page.dart';
import 'package:screaming_movie_app/screens/moviepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        '/categoryPage': (context) => const CategoryPage(),
        'moviePage': (context) => const MoviePage(imagePath: ''),
      },
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFF0F111D)),
    );
  }
}

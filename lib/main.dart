import 'package:fabric_engineering_app/resources/Level1/physics1_resources.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/level1_page.dart';
import 'pages/level2_page.dart';
import 'pages/level3_page.dart';
import 'pages/level4_page.dart';
import 'provider/level1_term1_page.dart';
import 'provider/level1_term2_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fabric Engineering Application',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/level1': (context) => const Level1Page(),
        '/level2': (context) => const Level2Page(),
        '/level3': (context) => const Level3Page(),
        '/level4': (context) => const Level4Page(),
        '/l1t1': (context) => const Level1Term1Page(),
        '/l1t2': (context) => const Level1Term2Page(),
        '/phy1': (context) => const Physics1Resources()
      },
    );
  }
}

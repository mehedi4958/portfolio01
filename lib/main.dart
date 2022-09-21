import 'package:flutter/material.dart';
import 'package:portfolio01/ui/pages/home.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(fontFamily: 'FiraCode'),
      home: const Home(),
    );
  }
}

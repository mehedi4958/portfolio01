import 'package:flutter/material.dart';
import 'package:portfolio01/ui/components/components.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Mehedi Hasan',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                children: const [
                  Header(),
                  SizedBox(height: 24.0),
                  Badges(),
                ],
              ),
            ),
            const SizedBox(height: 32.0),
            const Projects(),
            const Footer(),
          ],
        ),
      ),
    );
  }

  // Widget _header() {
  //   return const SizedBox.shrink();
  // }
}

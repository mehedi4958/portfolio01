import 'package:flutter/material.dart';
import 'package:portfolio01/ui/components/components.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          children: const [
            Header(),
            SizedBox(height: 24.0),
            Badges(),
            Projects(),
            Footer(),
          ],
        ),
      ),
    );
  }

  // Widget _header() {
  //   return const SizedBox.shrink();
  // }
}

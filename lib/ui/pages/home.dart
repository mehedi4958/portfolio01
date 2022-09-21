import 'package:flutter/material.dart';

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
      body: const Center(
        child: Text('My Portfolio App'),
      ),
    );
  }
}

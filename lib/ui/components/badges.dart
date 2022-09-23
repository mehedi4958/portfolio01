import 'package:flutter/material.dart';

class Badges extends StatelessWidget {
  const Badges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const technologies = <String>[
      'flutter',
      'dart',
      'firebase',
      'git',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: technologies
            .map(
              (technology) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/badges/$technology.png',
                        width: 48.0,
                      ),
                      const SizedBox(height: 4.0),
                      Text(technology),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

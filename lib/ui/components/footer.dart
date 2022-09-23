import 'package:flutter/material.dart';
import 'package:portfolio01/utilities/constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBlackColor,
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: const [
          Text(
            'Made with Flutter by Mehedi Hasan',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

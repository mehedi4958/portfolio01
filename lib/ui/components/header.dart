import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio01/services/http/url_launch.dart';
import 'package:portfolio01/utilities/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlLauncher = UrlLaunch();
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/profile.jpeg',
            ),
            radius: 100,
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Hello! I am Mehedi.',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w400,
                color: kDarkGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'A software engineer, passionate about developing mobile applications using Flutter.',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: kDarkGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            alignment: WrapAlignment.center,
            children: [
              IconButton(
                onPressed: () async {
                  const url = 'https://www.linkedin.com/in/mehedi4958/';
                  urlLauncher.urlLaunch(url);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: kBlueColor,
                ),
              ),
              IconButton(
                onPressed: () async {
                  const url = 'https://github.com/mehedi4958/';
                  urlLauncher.urlLaunch(url);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.github,
                  color: kBlackColor,
                ),
              ),
              IconButton(
                onPressed: () async {
                  const url = 'https://twitter.com/mehedi4958/';
                  urlLauncher.urlLaunch(url);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.twitter,
                  color: kBlueColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

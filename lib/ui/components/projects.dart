import 'package:flutter/material.dart';
import 'package:portfolio01/services/http/url_launch.dart';
import 'package:portfolio01/utilities/constants.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kLightGrey,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 52.0,
        horizontal: 16.0,
      ),
      child: Column(
        children: [
          const Text(
            'Projects',
            style: TextStyle(
              color: kDarkGrey,
              fontSize: 28.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16.0),
          Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            alignment: WrapAlignment.center,
            children: [
              _renderProjectCard(
                imageUrl: 'assets/projects/pokedex.png',
                title: 'Pokedex',
                description: 'Pokemon explorer built with Flutter',
                visitLink: 'https://pokedexweb.surge.sh',
              ),
              _renderProjectCard(
                imageUrl: 'assets/projects/cryptospace.png',
                title: 'Cryptospace',
                description: 'Cryptocurrency tracker',
                visitLink: 'https://cryptospace.surge.sh',
              ),
              _renderProjectCard(
                imageUrl: 'assets/projects/notable.png',
                title: 'Notable',
                description: 'Note-taking made simple',
                visitLink: 'https://notable.surge.sh',
              ),
              _renderProjectCard(
                imageUrl: 'assets/projects/chatly.png',
                title: 'Chatly',
                description: 'Real-time chat',
                visitLink: 'https://chatly.surge.sh',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _renderProjectCard({
    required String imageUrl,
    required String title,
    required String description,
    String? visitLink,
  }) {
    final launchUrl = UrlLaunch();
    return Container(
      constraints: const BoxConstraints(maxWidth: 350),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(color: kDarkGrey),
        ),
        elevation: 2.0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                      height: 200,
                      width: 350,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        color: kDarkGrey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ),
            if (visitLink != null)
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  right: 16.0,
                  bottom: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () => launchUrl.urlLaunch(visitLink),
                      child: const Text('Visit'),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

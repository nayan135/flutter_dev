import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Profile Image
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              'https://ictkalika.tech/images/nayan-acharya.jpg',
            ),
          ),

          const SizedBox(height: 15),

          // Name
          const Text(
            'Nayan Acharya',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),

          // Role
          const Text(
            'Dev',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),

          const SizedBox(height: 15),

          // Social Icons Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github, size: 23),
                onPressed: () => launchUrl(
                  Uri.parse("https://github.com/NAYAN135"),
                ),
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram, size: 23),
                onPressed: () => launchUrl(
                  Uri.parse("https://instagram.com/naayan135"),
                ),
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin, size: 23),
                onPressed: () => launchUrl(
                  Uri.parse("https://linkedin.com/in/nayan135"),
                ),
              ),
            ],
          ),

          const SizedBox(height: 15),

          // Description Text 
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1,
            ),
            child: const Text(
              "NAYAN ACHARYA writing random things and trying to run his android app "
              "but who knows what's gonna happen, but let's see.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

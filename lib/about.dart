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
          
         CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage('https://ictkalika.tech/images/nayan-acharya.jpg'),
          ),
          const SizedBox(height: 10),
     
          const Text(
            'Nayan Acharya',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          const Text(
            'Dev',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [


          IconButton(
            icon: const FaIcon(FontAwesomeIcons.github, size: 40),
            onPressed: () async {
             launchUrl(Uri.parse("https://github.com/NAYAN135"));
            },
          ),
           SizedBox(width: 20),
           IconButton(
            icon: const FaIcon(FontAwesomeIcons.instagram, size: 40),
            onPressed: () async {
             launchUrl(Uri.parse("https://instagram.com/naayan135"));
            },
          ),
         ],
          ),
        ],
      ),
    );
  }
}
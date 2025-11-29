import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           CircleAvatar(
            radius :50,
            backgroundImage: NetworkImage('https://ictkalika.tech/nayan-acharya.jpg'),
          )

        ]
      ),
      );
      

      }
    
  
}

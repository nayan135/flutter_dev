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
            
          radius: 28,
          child: Image(
            image: NetworkImage('https://n4ce5f0tqvsfhe7l.public.blob.vercel-storage.com/nayan-acharya.jpg'),
            
          ),
           ),
           
          const SizedBox(height:10),

    ]
      ),
      );
      

      }
    
  
}

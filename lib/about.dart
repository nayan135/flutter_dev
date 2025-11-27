import 'package:flutter/material.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Center(
    
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
const Text(
        'Abput Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      ),
       const SizedBox(height: 20), 
          IconButton(
            icon: const Icon(Icons.portable_wifi_off_outlined, size: 40),
            onPressed: () {
              print('Settings icon pressed!');
            },
          ),
        
          const SizedBox(height: 10),
     
      Row(children: [
        const Text('NAYAN', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),),
        const SizedBox(width: 40),
        const ElevatedButton(
          onPressed: null,
          child: Text('Click Me'),
        )
      ],)
         ],
      ),
    );
  }
}
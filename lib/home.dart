import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
           child:ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
            child: Container(
              height: 350,
              width: 300,
              color: Colors.blueAccent.withOpacity(0.2),
               child: Text(
            'Hellooo Welcome to the Den',
            style: TextStyle(fontSize: 48),
           ),
              
            ),


            //backgroundd baabl banaunu parxȧ hai ta aajalai yeti nai
            //background lai flutter shader use garni vaiyoo 
            //aani aaba chai mathi top right tira globe ko icon anni side ma country code
            //tes paxi tesko tala current local time i guess aaile lai yeti ma doen garam 
           
          
          ),
          ),
         const SizedBox(height:10),
Padding(
            padding: EdgeInsets.all(10),
         
         
          
        ),
         

        ],
          ),
          /* CircleAvatar(
            
          radius: 28,
          backgroundImage: NetworkImage('https://n4ce5f0tqvsfhe7l.public.blob.vercel-storage.com/nayan-acharya.jpg'),
            
        
           ),
           */
           
         
    
    
    );

      }
    
  
}

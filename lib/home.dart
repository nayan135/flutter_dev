import 'package:flutter/material.dart';
import 'dart:ui';
import 'paint.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Center(
   
      
      child: Column(
           
        
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          
          Container(

            decoration: BoxDecoration(
             
 
                
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 20,
                spreadRadius: 3,
                offset: const Offset(1, 10),
              ),
            ],
            ),

           child:ClipRRect(
            borderRadius: BorderRadius.circular(18),
              
              child: Stack(
                children: [

            Container(
              height: 350,
              width: 300,
               padding: const EdgeInsets.all(20),
             
             
             decoration: BoxDecoration(
              color: Colors.white38.withOpacity(0.16),
               borderRadius: BorderRadius.circular(17),
               image: const DecorationImage(
            image: NetworkImage(
              "https://n4ce5f0tqvsfhe7l.public.blob.vercel-storage.com/naa.HEIC",
            ),
            fit: BoxFit.cover,
          ),
               border: Border.all(
                color: Colors.white10.withOpacity(0.4),

               ),

             ),
            
            ),
              BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 10),
                    child: Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.25), // ✅ Glass tint
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
            
    Container(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [

    
      Text(
            'Hellooo ',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1,

            ),

           ),
           SizedBox(height:10),
           Text(
            'Welcome to the Den',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white60,

            ),

           ),
               ],
      ),
             ),
                 
          
        ],
      ),
  
          
           ),
          ),
                ],
           ),
       
           );
         

      }
    
  
}








//backgroundd baabl banaunu parxȧ hai ta aajalai yeti nai
            //background lai flutter shader use garni vaiyoo 
            //aani aaba chai mathi top right tira globe ko icon anni side ma country code
            //tes paxi tesko tala current local time i guess aaile lai yeti ma doen garam 


             /* CircleAvatar(
            
          radius: 28,
          backgroundImage: NetworkImage('https://n4ce5f0tqvsfhe7l.public.blob.vercel-storage.com/nayan-acharya.jpg'),
            
        
           ),
           */
           
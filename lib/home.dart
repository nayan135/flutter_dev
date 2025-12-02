import 'package:flutter/material.dart';

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

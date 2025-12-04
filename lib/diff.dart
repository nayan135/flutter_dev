import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

class DiffPage extends StatelessWidget {
  const DiffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        
        children: [

            IconButton.filled(
              onPressed: () async{

            },
             icon: android,
             ),
      ],)

    );
  }
}
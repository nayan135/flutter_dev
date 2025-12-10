import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:html' as html;

class DiffPage extends StatelessWidget {
  const DiffPage({super.key});


  Future<void> downloadfile(BuildContext context) async{
const String assetPath= 'assets/images/flutter_dev.apk';
const String assetName= 'flutter_dev.apk';

if(kIsWeb){
  final ByteData data= await rootBundle.load(assetPath);
  final bytes = data.buffer.asUint8List();

  final blobb=  html.Blob([bytes]);
  final url= html.Url.createObjectUrlFromBlob(blobb);
  final anchor= html.AnchorElement(href: url)
  ..download = assetName
  ..click();

  html.Url.revokeObjectUrl(url);
      return;

}

final ByteData data = await rootBundle.load(assetPath);
    final Uint8List bytes = data.buffer.asUint8List();
    Directory? download;

if (Platform.isWindows || Platform.isLinux || Platform.isMacOS){
download = await getDownloadsDirectory();

}else{
download = await getApplicationDocumentsDirectory();
}


final file= File("${download!.path}/$assetName");
await file.writeAsBytes(bytes);

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        
        children: [

            IconButton(
              onPressed: ()=> downloadfile(context),
             icon: const Icon(Icons.android),
             ),
      ],)

    );
  }
}
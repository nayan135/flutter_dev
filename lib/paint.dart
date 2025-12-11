import 'dart:ui';
import 'package:flutter/material.dart';

class bobthePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Drawing logic goes here
  final paint= Paint()
  ..style= PaintingStyle.stroke
  ..strokeWidth= 3.0
  ..color= Colors.amberAccent;
  final center = Offset(size.width / 2, size.height / 2); 

   canvas.drawCircle(center, 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   
    return false; 
  }
}
import 'package:flutter/material.dart';

final gradientColor = LinearGradient(colors: [Color(0xFF36A381), Color(0xFF4690A3),]);

final Shader textGradientColor = LinearGradient(
  colors: <Color>[Color(0xFF36A381), Color(0xFF4690A3)],)
    .createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

final borderColor = Color(0xFF454554);
final whiteColor = Colors.white;
final blackColor = Colors.black;
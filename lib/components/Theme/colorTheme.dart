import 'package:flutter/material.dart';
import 'package:sweetyboutique_app/components/Theme/colortheme.dart';

class colortheme {
  static colortheme colorTheme = new colortheme();
  
  final Color black;
  final Color constantcolor;
  final Color white;

  colortheme ({
    this.black= const Color (0xff212121),
    this.constantcolor= const Color (0xff0C4480),
    this.white=const Color(0xffF7F7F7),
  });
}
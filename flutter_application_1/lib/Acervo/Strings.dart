import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Strings {
  final appTitle = const Text("Mega cine",
      style: TextStyle(
          color: Colors.orange, fontSize: 30, fontWeight: FontWeight.bold));

  final pop = Text("Populares", style: GoogleFonts.robotoSlab(fontSize: 20));
  final morepop =
      Text('Mais Avaliados', style: GoogleFonts.robotoSlab(fontSize: 20));

  final sinopse = const Padding(
    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
    child: Text(
      'Sinopse',
      style: TextStyle(
          color: Colors.orange, fontSize: 35, fontWeight: FontWeight.bold),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../Useful/Color Palettey/color_palettey.dart';
import '../../../../Useful/Global/globals.dart';

class BodySinopse extends StatelessWidget {
  const BodySinopse({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 20, 5, 40),
          child: Image.network(Globals.image),
        ),
        Container(
          decoration: BoxDecoration(
              color: ColorPalettey.white.withOpacity(0.5),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  Globals.title,
                  style: GoogleFonts.robotoSlab(
                      fontSize: 50, color: ColorPalettey.white),
                ),
                Text(Globals.sinopse,
                    style: GoogleFonts.robotoSlab(
                        fontSize: 25, color: ColorPalettey.white))
              ],
            ),
          ),
        ),
      ],
    );
  }
}

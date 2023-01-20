import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VisualGrid extends StatelessWidget {
  final String buttonImage;
  final String buttonTitle;
  const VisualGrid(
      {super.key, required this.buttonImage, required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.network(
        buttonImage,
        fit: BoxFit.fill,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
      ),
      Text(buttonTitle, style: GoogleFonts.robotoSlab(fontSize: 15))
    ]);
  }
}

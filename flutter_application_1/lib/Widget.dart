import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Acervo.dart';
import 'Funções.dart';
import 'MovieList.dart';
import 'Sinopse.dart';



class Baner extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final ordem;
  const Baner({super.key, required this.ordem});

  @override
  State<Baner> createState() => _BanerState();
}

class _BanerState extends State<Baner> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 30,
      padding: const EdgeInsets.all(5.0),
      shrinkWrap: true,
      childAspectRatio: (100 / 200),
      children: List.generate(
        codMovie.length,
        (index) {
          widget.ordem;
          var button = posterData[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                next();
                selectedMovie = index;
                imagem = button.imagem;
                sinopse = button.overview;
                title = button.title;
              });
            },
            child: Column(
              children: [
                Image.network(
                  button.imagem,
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
                Text(button.title, style: GoogleFonts.robotoSlab(fontSize: 15))
              ],
            ),
          );
        },
      ),
    );
  }
}

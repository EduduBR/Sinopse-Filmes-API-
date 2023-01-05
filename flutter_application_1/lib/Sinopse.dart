import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Acervo.dart';
import 'Funções.dart';
import 'TabBar.dart';

var imagem = '';
var sinopse = '';
var title = '';

class MovieSnopse extends StatefulWidget {
  const MovieSnopse({super.key});

  @override
  State<MovieSnopse> createState() => _MovieSnopseState();
}

class _MovieSnopseState extends State<MovieSnopse> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isSwitched ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              ListView(
                children: [
                  Image.network(imagem),
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: GoogleFonts.robotoSlab(fontSize: 50),
                            ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: const Text(
                            'Sinopse',
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(sinopse,style: GoogleFonts.robotoSlab(fontSize: 25))
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: IconButton(
                  onPressed: movieBack,
                  icon: Icon(
                    Icons.arrow_back,
                    color: Cor.switch_,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

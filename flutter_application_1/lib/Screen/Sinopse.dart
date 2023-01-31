import 'package:flutter/material.dart';
import 'package:flutter_application_1/Acervo/Strings.dart';
import 'package:flutter_application_1/Widget/ViewModel.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Acervo/Cores.dart';
import '../Widget/TabBar.dart';

//global variavel
var image = '';
var sinopse = '';
var title = '';

class MovieSnopse extends StatelessWidget {
  const MovieSnopse({super.key});

  @override
  Widget build(BuildContext context) {
    final appView = AppModel();
    final strings = Strings();
    return MaterialApp(
      theme: isSwitched ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              ListView(
                children: [
                  Image.network(image),
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.robotoSlab(fontSize: 50),
                        ),
                        strings.sinopse,
                        Text(sinopse,
                            style: GoogleFonts.robotoSlab(fontSize: 25))
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: IconButton(
                  onPressed: appView.back,
                  icon: const Icon(
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

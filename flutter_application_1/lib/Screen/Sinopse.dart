import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/ViewModel.dart';
import 'package:flutter_application_1/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Acervo/Cores.dart';

//global variavel
var image = '';
var sinopse = '';
var title = '';

class ScreenSnopse extends StatelessWidget {
  const ScreenSnopse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 10,
        centerTitle: true,
        title: Text('Sinopse', style: Theme.of(context).textTheme.titleLarge),
        leading: IconButton(
          onPressed: Provider.of<ViewModel>(context, listen: false).back,
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ColorPalettey.white,
            size: 30,
          ),
        ),
      ),
      body: Container(
        color: isSwitched ? ColorPalettey.primary : ColorPalettey.dark,
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 20, 5, 40),
                child: Image.network(image),
              ),
              Container(
                decoration: BoxDecoration(
                    color: ColorPalettey.white.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.robotoSlab(
                            fontSize: 50, color: ColorPalettey.white),
                      ),
                      Text(sinopse,
                          style: GoogleFonts.robotoSlab(
                              fontSize: 25, color: ColorPalettey.white))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

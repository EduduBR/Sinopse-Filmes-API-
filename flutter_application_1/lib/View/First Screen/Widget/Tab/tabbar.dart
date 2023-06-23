import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../../Model/Functions/model.dart';
import '../../../../Useful/Color Palettey/color_palettey.dart';
import '../../../../Useful/Global/globals.dart';
import '../Catalog/alphabetical_movies.dart';
import '../Catalog/favorite_movies.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset('assets/catalogo.png',scale: 12),
          toolbarHeight: 70,
          elevation: 10,
          centerTitle: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Movie Catalog",style: Theme.of(context).textTheme.titleLarge),
              Switch(
                activeColor: ColorPalettey.white,
                value: Globals.isSwitched,
                onChanged: (value) => 
                    Provider.of<ViewModel>(context, listen: false)
                        .status(value)
              )
            ],
          ),
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TabBar(
                  indicatorColor: ColorPalettey.primary,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text("Populares",
                          style:  GoogleFonts.robotoSlab(fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text('Mais Avaliados',
                          style:  GoogleFonts.robotoSlab(fontSize: 20)),
                    )
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [AlphabeticalList(),PopularityList()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

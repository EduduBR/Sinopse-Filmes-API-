import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/ViewModel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Acervo/Cores.dart';
import '../Screen/List_I.dart';
import '../Screen/List_II.dart';
import '../main.dart';

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
          toolbarHeight: 70,
          elevation: 10,
          centerTitle: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Mega cine",style: Theme.of(context).textTheme.titleLarge),
              Switch(
                activeColor: ColorPalettey.white,
                value: isSwitched,
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
                  children: [BodyListViewI(), BodyListViewII()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

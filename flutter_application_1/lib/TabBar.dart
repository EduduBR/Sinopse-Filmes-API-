import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Acervo.dart';
import 'MovieList.dart';

void main() => runApp(const Catalogo());
bool isSwitched = false;

class Catalogo extends StatefulWidget {
  const Catalogo({super.key});

  @override
  State<Catalogo> createState() => _CatalogoState();
}

class _CatalogoState extends State<Catalogo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isSwitched ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Container(
            margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Mega cine",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      FlutterSwitch(
                        height: 30.0,
                        width: 45.0,
                        padding: 4.0,
                        toggleSize: 15.0,
                        activeColor: Cor.transparent,
                        inactiveColor: Cor.transparent,
                        toggleColor: Cor.switch_,
                        switchBorder:
                            Border.all(color: Cor.base, width: 3),
                        value: isSwitched,
                        onToggle: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                      ),
                    ]),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TabBar(
                      indicatorWeight: 1,
                      labelColor: Cor.base,
                      unselectedLabelColor:isSwitched?Colors.white: Colors.black,
                      indicatorColor: Cor.transparent,
                      tabs: [Text('Populares',style: GoogleFonts.robotoSlab(fontSize: 20),), Text('Mais Avaliados',style: GoogleFonts.robotoSlab(fontSize: 20))]),
                ),
                const Expanded(
                    child: TabBarView(
                  children: [MovieList(), MoviePopList()],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

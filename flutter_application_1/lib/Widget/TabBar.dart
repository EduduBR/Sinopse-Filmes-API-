import 'package:flutter/material.dart';
import 'package:flutter_application_1/Acervo/Strings.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../Acervo/Cores.dart';
import '../Screen/List_I.dart';
import '../Screen/List_II.dart';


bool isSwitched = false;

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    final string = Strings();
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
                      string.appTitle,
                      FlutterSwitch(
                        height: 30.0,
                        width: 45.0,
                        padding: 4.0,
                        toggleSize: 15.0,
                        activeColor: Cor.transparent,
                        inactiveColor: Cor.transparent,
                        toggleColor: Cor.switch_,
                        switchBorder: Border.all(color: Cor.base, width: 3),
                        value: isSwitched,
                        onToggle: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        },
                      ),
                    ]),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: TabBar(
                      indicatorWeight: 1,
                      labelColor: Cor.base,
                      unselectedLabelColor:
                          isSwitched ? Colors.white : Colors.black,
                      indicatorColor: Cor.transparent,
                      tabs: [string.pop, string.morepop]),
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

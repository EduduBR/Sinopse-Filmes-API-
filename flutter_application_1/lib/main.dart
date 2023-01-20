import 'package:flutter/material.dart';

import 'Acervo/Cores.dart';
import 'Widget/TabBar.dart';
import 'Screen/Sinopse.dart';

void main() => runApp(const MyMatrix());

final moviecontroller = PageController();

class MyMatrix extends StatelessWidget {
  const MyMatrix({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 15,
          backgroundColor: Cor.base,
        ),
        body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: moviecontroller,
            children: const [Tabs(), MovieSnopse()]),
      ),
    );
  }
}



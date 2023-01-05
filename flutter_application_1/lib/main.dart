import 'package:flutter/material.dart';  
import 'Acervo.dart';
import 'TabBar.dart';
import 'Sinopse.dart';

void main() => runApp(const MyMatrix());

class MyMatrix extends StatefulWidget {
  const MyMatrix({super.key});
  @override
  State<MyMatrix> createState() => _MyMatrixState();
}

final moviecontroller = PageController();

class _MyMatrixState extends State<MyMatrix> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 17,
          backgroundColor: Cor.base,
        ),
        body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: moviecontroller,
            children: const [Catalogo(), MovieSnopse()]),
      ),
    );
  }
}

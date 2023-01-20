import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/MvvM.dart';
import 'package:flutter_application_1/Widget/Baner.dart';
import '../Acervo/Stream.dart';



class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    final filter = AppMVVM();
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: getInfoMovie(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (filter.alphabetical().isEmpty == false) {
                return Baner(order: filter.alphabetical());
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline_sharp,
                      color: Colors.red[700],
                      size: 100,
                    ),
                    const Text("   Erro no Processo\nVerifique sua conexão"),
                  ],
                );
              }
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}


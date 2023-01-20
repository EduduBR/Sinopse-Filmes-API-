import 'package:flutter/material.dart';
import '../Widget/MvvM.dart';
import '../Acervo/Stream.dart';
import '../Widget/Baner.dart';

class MoviePopList extends StatelessWidget {
  const MoviePopList({super.key});

  @override
  Widget build(BuildContext context) {
    final filtro = AppMVVM();
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: getInfoMovie(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (filtro.popularity().isEmpty == false) {
                return Baner(
                  order: filtro.popularity(),
                );
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
              return const Text('Erro no processo');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

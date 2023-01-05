import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget.dart';
import 'Acervo.dart' as conteudo;
import 'Acervo.dart';
import 'Funções.dart';

final posterData = List<Poster>.from(conteudo.poster);
var selectedMovie = 0;

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  void initState() {
    super.initState();
    movieData = getInfoMovie();
  }

  late Future movieData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: movieData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (poster.isEmpty == false) {
                return Baner(ordem: alfabetica());
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

class MoviePopList extends StatefulWidget {
  const MoviePopList({super.key});

  @override
  State<MoviePopList> createState() => _MoviePopListState();
}

class _MoviePopListState extends State<MoviePopList> {
  @override
  void initState() {
    super.initState();
    movieData = getInfoMovie();
  }

  late Future movieData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: movieData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (poster.isEmpty == false) {
                return Baner(ordem: popularity());
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

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'Acervo.dart';
import 'main.dart';
import 'MovieList.dart';

void movieBack() {
  moviecontroller.previousPage(
      duration: const Duration(microseconds: 300), curve: Curves.ease);
}

void next() {
  moviecontroller.nextPage(
      duration: const Duration(microseconds: 300), curve: Curves.ease);
}

dynamic alfabetica() {
  posterData.sort((a, b) => a.title.compareTo(b.title));
}

dynamic popularity() {
  posterData.sort((a, b) => b.pop.compareTo(a.pop));
}

//Função loop que pega as informações necessárias
Future getInfoMovie() async {
  final picture = Dio();
  const key ='127daaec0c09ab44dff0ed55219f1591';
  for (int i = 0; i < codMovie.length; i++) {
    final resultado = await picture.get(
        'https://api.themoviedb.org/3/movie/${codMovie[i]}?api_key=$key&language=pt-BR');
    if (resultado.statusCode == 200) {
      poster.add(Poster(
          title: resultado.data['title'],
          imagem:
              'https://image.tmdb.org/t/p/w500${resultado.data['poster_path']}',
          pop: resultado.data["popularity"],
          overview: resultado.data["overview"]));
    } else {
      throw Exception('Falha ao carregar dados...');
    }
  }
}
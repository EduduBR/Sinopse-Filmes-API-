import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'ClassPoster.dart';

//global list
List<Poster> poster = [];

// movie code
class Cod {
  final _codeMovie = [
    '436270',
    '76600',
    '736526',
    '505642',
    '315162',
    '361743',
    '899112',
    '675353',
    '982620',
    '550',
    '966220'
  ];
}

Stream<List<Poster>> getInfoMovie() async* {
  poster.clear();
  final code = Cod();
  final picture = Dio();
  const key = '127daaec0c09ab44dff0ed55219f1591';
  for (int i = 0; i < code._codeMovie.length; i++) {
    final resultado = await picture.get(
        'https://api.themoviedb.org/3/movie/${code._codeMovie[i]}?api_key=$key&language=pt-BR');
    if (resultado.statusCode == 200) {
      poster.add(Poster(
          title: resultado.data['title'],
          image:
              'https://image.tmdb.org/t/p/w500${resultado.data['poster_path']}',
          pop: resultado.data["popularity"],
          overview: resultado.data["overview"]));
    } else {
      throw Exception('Falha ao carregar dados...');
    }
  }
}

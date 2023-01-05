import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

//Informações de cada filme
class Poster {
  String title;
  String imagem;
  double pop;
  String overview;
  Poster(
      {required this.title,
      required this.imagem,
      required this.pop,
      required this.overview});
}

//Codigos de filmes,facilitanto a maneira de adicionar mais filmes
const codMovie = [
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

var poster = [];

class Cor {
  static const Color base = Color(0xFF800000);
  static const Color switch_ = Color(0XFF8D8B92);
  static const Color transparent = Color(0x00ff0000);
  static const Color dark = Color(0XFF22262c);
}

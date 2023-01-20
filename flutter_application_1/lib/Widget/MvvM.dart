import 'package:flutter/material.dart';
import 'package:flutter_application_1/Acervo/Stream.dart';
import '../Acervo/ClassPoster.dart';
import '../Screen/Sinopse.dart';
import '../main.dart';

class AppMVVM extends ChangeNotifier {
  List<Poster> get all => poster;

  var selectedMovie = 0;

// alphabetical order
  List<Poster> alphabetical() {
    all.sort((a, b) => a.title.compareTo(b.title));
    return all;
  }

// popularity order
  List<Poster> popularity() {
    all.sort((a, b) => b.pop.compareTo(a.pop));
    return all;
  }

  // next page
  void selected(index, button) {
    selectedMovie = index;
    image = button.imagem;
    sinopse = button.overview;
    title = button.title;
    moviecontroller.nextPage(
        duration: const Duration(microseconds: 300), curve: Curves.ease);
  }

  void back() {
    moviecontroller.previousPage(
        duration: const Duration(microseconds: 300), curve: Curves.ease);
  }
}

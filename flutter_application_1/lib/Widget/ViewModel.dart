import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/Stream.dart';
import '../Acervo/ClassPoster.dart';

import '../Screen/Sinopse.dart';
import '../main.dart';

class ViewModel extends ChangeNotifier {
  List<Poster> get all => poster;

  var movieSelected = 0;


  void status(value) {
    isSwitched = value;
    notifyListeners();
  }

// alphabetical order
  List<Poster> alphabetical() {
    all.sort((a, b) => a.title.compareTo(b.title));
    return all;
  }

// popularity order
  List<Poster> popularity() {
    all.sort((a, b) => b.popular.compareTo(a.popular));
    return all;
  }

  // next page
  void selected(index, button) {
    movieSelected = index;
    image = button.image;
    sinopse = button.overview;
    title = button.title;
    moviecontroller.nextPage(
        duration: const Duration(microseconds: 300), curve: Curves.ease);
  }

//Back page
  void back() {
    moviecontroller.previousPage(
        duration: const Duration(microseconds: 300), curve: Curves.ease);
  }
}

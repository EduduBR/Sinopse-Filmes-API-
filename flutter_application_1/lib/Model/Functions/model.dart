import 'package:flutter/material.dart';
import 'package:flutter_application_1/Useful/Global/globals.dart';
import 'package:flutter_application_1/View/First%20Screen/Screen/home.dart';
import 'package:flutter_application_1/Model/API/Stream.dart';
import '../../Useful/Class Poster/poster.dart';
import '../../View/Second Screen/Screen/Sinopse.dart';

class ViewModel extends ChangeNotifier {
  List<Poster> get all => poster;

  var movieSelected = 0;

  void status(value) {
    Globals.isSwitched = value;
    notifyListeners();
  }

// alphabetical order
  List<Poster> alphabetical() {
    all.sort((a, b) => a.title.compareTo(b.title));
    return all;
  }

// popularity order
  List<Poster> popularity() {
    all.sort((a, b) => b.point.compareTo(a.point));
    return all;
  }

  // next page
  void selected(index, button, context) {
    movieSelected = index;
    Globals.image = button.image;
    Globals.sinopse = button.overview;
    Globals.title = button.title;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Sinopse()),
    );
  }

  void back(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }
}

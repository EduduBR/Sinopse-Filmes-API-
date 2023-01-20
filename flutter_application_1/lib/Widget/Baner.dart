import 'package:flutter/material.dart';
import 'package:flutter_application_1/Acervo/VisualGrid.dart';
import '../Acervo/ClassPoster.dart';
import 'MvvM.dart';

class Baner extends StatelessWidget {
  List<Poster> order;
  Baner({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final movies = AppMVVM();
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 30,
      padding: const EdgeInsets.all(5.0),
      shrinkWrap: true,
      childAspectRatio: (100 / 200),
      children: List.generate(
        movies.all.length,
        (index) {
          var button = order[index];
          return GestureDetector(
            onTap: () {
              movies.selected(index, button);
            },
            child: VisualGrid(
                buttonImage: button.imagem, buttonTitle: button.title),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Acervo/VisualGrid.dart';
import '../Acervo/ClassPoster.dart';
import 'ViewModel.dart';

class Baner extends StatelessWidget {
  List<Poster> order;
  Baner({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final viewModel = AppModel();
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 30,
      padding: const EdgeInsets.all(5.0),
      shrinkWrap: true,
      childAspectRatio: (100 / 200),
      children: List.generate(
        viewModel.all.length,
        (index) {
          var button = order[index];
          return GestureDetector(
            onTap: () {
              viewModel.selected(index, button);
            },
            child: VisualGrid(
                buttonImage: button.image, buttonTitle: button.title),
          );
        },
      ),
    );
  }
}

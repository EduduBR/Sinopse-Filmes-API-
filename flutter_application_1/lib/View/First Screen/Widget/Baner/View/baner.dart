import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/First%20Screen/Widget/Baner/Visual%20Grid/visual_grid.dart';
import 'package:provider/provider.dart';
import '../../../../../Model/Functions/model.dart';
import '../../../../../Useful/Class Poster/poster.dart';

class Baner extends StatelessWidget {
  final List<Poster> order;
  Baner({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 30,
      padding: const EdgeInsets.all(5.0),
      shrinkWrap: true,
      childAspectRatio: (100 / 200),
      children: List.generate(
        Provider.of<ViewModel>(context).all.length,
        (index) {
          var button = order[index];
          return GestureDetector(
            onTap: () {
              Provider.of<ViewModel>(context,listen: false).selected(index, button,context);
            },
            child: VisualGrid(
                buttonImage: button.image, buttonTitle: button.title),
          );
        },
      ),
    );
  }
}

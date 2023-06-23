import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/Second%20Screen/Widget/ListView/sinopse.dart';
import 'package:provider/provider.dart';
import '../../../Model/Functions/model.dart';
import '../../../Useful/Color Palettey/color_palettey.dart';
import '../../../Useful/Global/globals.dart';



class Sinopse extends StatelessWidget {
  const Sinopse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 10,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sinopse', style: Theme.of(context).textTheme.titleLarge),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Image.asset('assets/sinopse.png', scale: 15),
            )
          ],
        ),
        leading: GestureDetector(
            onTap: () {
              Provider.of<ViewModel>(context, listen: false).back(context);
            },
            child: Container(
              color: Globals.isSwitched
                  ? ColorPalettey.secundary
                  : ColorPalettey.black,
              child: Icon(Icons.arrow_back_ios_new),
            )),
      ),
      body: Container(
        color: Globals.isSwitched ? ColorPalettey.primary : ColorPalettey.dark,
        child: Center(
          child: BodySinopse(),
        ),
      ),
    );
  }
}

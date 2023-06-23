import 'package:flutter/material.dart';
import 'package:flutter_application_1/Useful/Color%20Palettey/color_palettey.dart';
import 'package:provider/provider.dart';
import '../../../../Model/API/Stream.dart';
import '../../../../Model/Functions/model.dart';
import '../Baner/View/baner.dart';

class PopularityList extends StatelessWidget {
  const PopularityList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: getInfoMovie(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              //Se a função retornar uma lista com itens
              if (Provider.of<ViewModel>(context).popularity().isEmpty == false) {
                //retorne uma grid na ordem selecionada
                return Baner(order: Provider.of<ViewModel>(context).popularity());
              } //se não retorne uma mensagem de erro de conexao
              else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline_sharp,
                        color: ColorPalettey.red, size: 100),
                    const Text("   Erro no Processo\nVerifique sua conexão"),
                  ],
                );
              }
            } else if (snapshot.hasError) {
              return const Text('Erro no processo');
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Acervo/Cores.dart';
import 'package:flutter_application_1/Widget/baner.dart';
import 'package:flutter_application_1/Widget/ViewModel.dart';
import 'package:provider/provider.dart';
import '../Acervo/Stream.dart';

class BodyListViewI extends StatelessWidget {
  const BodyListViewI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: getInfoMovie(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              //Se a função retornar uma lista com itens
              if (Provider.of<ViewModel>(context).alphabetical().isEmpty == false) {
                //retorne uma grid na ordem selecionada
                return Baner(order: Provider.of<ViewModel>(context).alphabetical());
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

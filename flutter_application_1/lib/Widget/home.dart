import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Acervo/theme.dart';
import '../Screen/Sinopse.dart';
import '../main.dart';
import 'TabBar.dart';
import 'ViewModel.dart';

class MyMatrix extends StatelessWidget {
  const MyMatrix({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Provider.of<ViewModel>(context),
      builder: (context,child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme:isSwitched ? ThemeApp().themeLight : ThemeApp().themeDark,
            home: Scaffold(
              body: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: moviecontroller,
                  children: const [Tabs(), ScreenSnopse()]),
            ),
          
        );
      }
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Model/Functions/model.dart';
import '../../../Useful/Global/globals.dart';
import '../../../Useful/Theme/theme.dart';
import '../Widget/Tab/tabbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: Provider.of<ViewModel>(context),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme:
                Globals.isSwitched ? ThemeCustom().themeLight : ThemeCustom().themeDark,
            home: Scaffold(
              body: Tabs(),
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Model/Functions/model.dart';
import 'View/First Screen/Screen/home.dart';

void main() {
  {
    Provider.debugCheckInvalidValueType = null;
    runApp(const MyApp());
  }
  ;
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(create: (context) => ViewModel(), child: HomePage());
  }
}

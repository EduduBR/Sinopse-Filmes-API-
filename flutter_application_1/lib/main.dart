import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'Widget/ViewModel.dart';
import 'Widget/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    Provider.debugCheckInvalidValueType = null;
    runApp(const MyApp());
  });
}

bool isSwitched = false;
final moviecontroller = PageController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(create: (context) => ViewModel(), child: MyMatrix());
  }
}

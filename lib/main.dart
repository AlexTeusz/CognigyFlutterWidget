import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:real_chat_flutter/app_initializer.dart';
import 'package:real_chat_flutter/screens/mainScreen.dart';
import 'dependency_injection.dart';

Injector injector;

//void main() => runApp(MyMaterial());

void main() async {
  DependencyInjection().initialise(Injector.getInjector());
  injector = Injector.getInjector();
  await AppInitializer().initialise(injector);
  runApp(MyMaterial());
}

class MyMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

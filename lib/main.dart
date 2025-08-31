import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ami_probashi/home_screen.dart';
import 'calculator/home_screen.dart';
import 'calculator/temperature.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AmiprobashiApp(),
    );
  }
}

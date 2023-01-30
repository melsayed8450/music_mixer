import 'package:flutter/material.dart';
import 'package:music_mixer/home_screen.dart';
import 'package:music_mixer/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_)=> MyProvider(),
      child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context)=> MyProvider(),
        child: HomeScreen()),
    );
  }
}
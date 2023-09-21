import 'package:flutter/material.dart';
import 'package:learn_widgets/widgets/animation_controller.dart';
import 'package:learn_widgets/widgets/tween_animation.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'learn flutter widgets',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const AnimeController(),
    );
  }
}
import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TweenAnimation'),
        backgroundColor: const Color.fromRGBO(44, 44, 44, 1.0),
      ),
      body: _pageBackground()
    );
  }

  Widget _pageBackground(){
    return Container(
      color: const Color.fromRGBO(31, 31, 31, 1.0),
    );
  }
}
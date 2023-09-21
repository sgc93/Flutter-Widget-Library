import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation> {
  final Tween<double> _tween = Tween<double>(begin: 0.0, end: 1.0);
  
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
    return TweenAnimationBuilder(
      tween: _tween,
      duration: const Duration(seconds: 1),
      curve: Curves.bounceInOut,
      builder: (_context, double _scale, _child){
        return Transform.scale(
          scale: _scale,
          child: _child,
        );
      },
      child: Container(
        color: const Color.fromRGBO(31, 31, 31, 1.0),
      ),
    );
  }
}
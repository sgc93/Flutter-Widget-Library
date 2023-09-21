import 'dart:math';

import 'package:flutter/material.dart';

class AnimeController extends StatefulWidget {
  const AnimeController({super.key});

  @override
  State<AnimeController> createState() => _AnimeControllerState();
}

class _AnimeControllerState extends State<AnimeController> with TickerProviderStateMixin{
  late AnimationController _controller;
  late Animation _animation;
  final Tween<double> _tween = Tween<double>(begin: 0.0, end:1.0);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = _tween.animate(_controller);
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
  final double _deviceHeight = MediaQuery.of(context).size.height;
  final double _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimationController'),
        backgroundColor: const Color.fromRGBO(41, 41, 41, 1.0),
      ),
      body: Container(
        color: const Color.fromRGBO(31, 31, 31, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color.fromARGB(122, 104, 144, 104),
              width: _deviceWidth,
              height: _deviceHeight * 0.27,
              margin: const EdgeInsets.all(10),
              child: _rotatedIcon(),
            ),
            Container(
              color: const Color.fromARGB(122, 157, 92, 76),
              width: _deviceWidth,
              height: _deviceHeight * 0.27,
              margin: const EdgeInsets.all(10),
              child: _translatedIcon(),
            ),
          ],
        )
      ),
    );
  }

  Widget _rotatedIcon(){
    return AnimatedBuilder(
      animation: _controller.view,
      builder: (_context, _child){
        return Transform.rotate(
          angle: _controller.value * -2 * pi,
          child: _child,
        );
      },
      child: const Center(
        child: Icon(
          Icons.rotate_left_outlined,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }

  Widget _translatedIcon(){
    return AnimatedBuilder(
      animation: _animation,
      builder: (_context, _child){
        return Transform.scale(
          scale: _animation.value,
          child: _child,
        );
      },
      child: const Center(
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
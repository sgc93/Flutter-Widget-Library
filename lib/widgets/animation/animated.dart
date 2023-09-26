import 'package:flutter/material.dart';

class AnimatedWidgets extends StatefulWidget {
  const AnimatedWidgets({super.key});

  @override
  State<AnimatedWidgets> createState() => _AnimatedWidgetsState();
}

class _AnimatedWidgetsState extends State<AnimatedWidgets> {
  double _initialWidth = 100;
  bool _isAnimationEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Widget'),
        backgroundColor: const Color.fromRGBO(44, 44, 44, 1.0),
      ),
      body: Container(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _pageBackground(),
            Align(
              alignment: Alignment.bottomCenter,
              child:  _animatedButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _pageBackground(){
    return Container(
      color: const Color.fromRGBO(31, 31, 31, 1.0),
    );
  }

  Widget _animatedButton(){
    return GestureDetector(
        onDoubleTap: () {
          setState(() {
            _isAnimationEnabled = !_isAnimationEnabled;
            _initialWidth = _isAnimationEnabled ? (2*_initialWidth) : _initialWidth;
          });
        },
        child: AnimatedContainer(
          margin: const EdgeInsets.all(20),
          duration:const Duration(seconds: 3),
          curve: Curves.bounceInOut,
          height: _initialWidth,
          width: _initialWidth,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(53,53, 53, 1.0),
            borderRadius: BorderRadius.circular(_initialWidth),
          ),
          child: const Center(
            child: Text(
              'Double tap',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
  }
}
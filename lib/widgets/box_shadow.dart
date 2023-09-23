import 'package:flutter/material.dart';

class Neumorphism extends StatelessWidget {
  const Neumorphism({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text(
          'Neumorphism',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _getChildren('1'),
              _getChildren('2'),
              _getChildren('3'),
              _getChildren('+'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _getChildren('4'),
              _getChildren('5'),
              _getChildren('6'),
              _getChildren('-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _getChildren('7'),
              _getChildren('8'),
              _getChildren('9'),
              _getChildren('*'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _getChildren('.'),
              _getChildren('0'),
              _getChildren('='),
              _getChildren('/'),
            ],
          ),
        ],
      )),
    );
  }

  _getBoxDecoration() {
    return BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade600,
          offset: const Offset(5, 5),
          blurRadius: 8,
        ),
        const BoxShadow(
          color: Colors.white,
          offset: Offset(-5, -5),
          blurRadius: 9,
        ),
      ],
    );
  }

  Widget _getChildren(String icon) {
    return Container(
      height: 50,
      width: 50,
      decoration: _getBoxDecoration(),
      child: Center(
        child: Text(
          icon,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

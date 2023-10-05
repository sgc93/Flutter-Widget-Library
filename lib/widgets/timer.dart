import 'dart:async';

import 'package:flutter/material.dart';

class MyTimer extends StatefulWidget {
  const MyTimer({super.key});

  @override
  State<MyTimer> createState() => _MyTimerState();
}

class _MyTimerState extends State<MyTimer> {
  int _seconds = 0;
  bool _isTimerStarted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.hourglass_top),
            SizedBox(
              width: 20,
            ),
            Text('Timer'),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _countingBox(),
            GestureDetector(
              onTap: () {
                if (_isTimerStarted) {
                  _timer();
                  setState(() {
                    _isTimerStarted = false;
                  });
                } else {
                  _timer();
                  setState(() {
                    _isTimerStarted = true;
                  });
                }
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue[200],
                ),
                child: Text(
                  _isTimerStarted ? 'S T O P' : 'S T A R T',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _countingBox() {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue[200],
      ),
      child: Text(
        _seconds.toString(),
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 100,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  _timer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_isTimerStarted) {
        timer.cancel();
      } else {
        setState(() {
          _seconds++;
        });
      }
    });
  }
}

import 'package:flutter/material.dart';

class BottomSheetW extends StatelessWidget {
  BottomSheetW({super.key});
  final List<String> list = [
    'what to do next to this',
    'what to do next to then',
    'what to do next to that',
    'what to do before doing this',
    'what to do before doing that',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomSheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showBottomSheet(context);
          },
          child: const Text('show bottom sheet'),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.black54,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Card(
                child: ListTile(
                  title: Text(list[0]),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(list[1]),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(list[2]),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(list[3]),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(list[4]),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

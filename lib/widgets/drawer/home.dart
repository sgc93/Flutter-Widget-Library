import 'package:flutter/material.dart';
import 'package:learn_widgets/widgets/drawer/drawer.dart';
import 'package:learn_widgets/widgets/drawer/end_drawer.dart';

class DrawerHome extends StatelessWidget {
  DrawerHome({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.arrow_right,
            color: Colors.blue,
            size: 30,
          ),
        ),
        title: const Text(
          'DrawerWidget',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),
    );
  }
}

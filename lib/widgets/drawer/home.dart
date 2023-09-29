import 'package:flutter/material.dart';
import 'package:learn_widgets/widgets/drawer/drawer.dart';
import 'package:learn_widgets/widgets/drawer/end_drawer.dart';

class DrawerHome extends StatelessWidget {
  DrawerHome({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(53, 58, 63, 1),
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(53, 58, 63, 1),
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.account_circle,
            size: 30,
          ),
        ),
        title: const Text('DrawerWidget'),
        actions: [
          IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openEndDrawer();
            },
            icon: const Icon(
              Icons.settings,
              size: 30,
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      endDrawer: const MyEndDrawer(),
    );
  }
}

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(53, 58, 63, 1),
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/gStaffs.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: const Text(
                        'coodSpoon',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'No River So Wide',
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const ListTile(
            title: Text('Game Level'),
            subtitle: Text('default game level'),
          ),
          ListTile(
            title: GestureDetector(
              onTap: () {
                Scaffold.of(context).closeDrawer();
                Scaffold.of(context).openEndDrawer();
              },
              child: const Text('Settings'),
            ),
            subtitle: const Text('manage the behavior of the game'),
          ),
          const ListTile(
            title: Text('Dark Mode'),
            subtitle: Text('dark mode is selected'),
            trailing: Icon(
              Icons.toggle_on,
              color: Colors.white,
            ),
          ),
          const ListTile(
            title: Text('About'),
          ),
          const SizedBox(
            height: 340,
          ),
          const Center(child: Text('v1.0.0')),
        ],
      ),
    );
  }
}

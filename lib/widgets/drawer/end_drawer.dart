import 'package:flutter/material.dart';

class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(53, 58, 63, 1),
      child: ListView(
        children: const [
          ListTile(
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            title: Text('Upload status'),
            subtitle: Text('uploading your status to codergames.com'),
          ),
          ListTile(
            title: Text('Show instant score'),
            subtitle: Text('instant score will be displayed'),
            trailing: Icon(
              Icons.toggle_off,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Text('Developer Mode'),
            subtitle: Text('developer mode is on'),
            trailing: Icon(
              Icons.toggle_on,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Text('About'),
          ),
          SizedBox(
            height: 440,
          ),
          Center(child: Text('v1.0.0')),
        ],
      ),
    );
  }
}

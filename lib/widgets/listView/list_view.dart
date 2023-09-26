import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});
  
  @override
  State<ListGrid> createState(){
    return _ListGridState();
  }
}

class _ListGridState extends State<ListGrid> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView and GridView'),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(5),
          children: [
            Card(
              child: ListTile(
                title: const Text('Go to church'),
                subtitle: Text(DateTime.now().toString()),
                trailing: const Icon(Icons.check_box),
              ),
            ),
          ],
        ),
      )
    );
  }
}
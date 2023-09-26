import 'package:flutter/material.dart';

class GridList extends StatefulWidget {
  const GridList({super.key});
  
  @override
  State<GridList> createState(){
    return _GridListState();
  }
}

class _GridListState extends State<GridList> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: Container(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 3/4,
          ),
          children: const [
            Center(
              child: Card( 
                color: Colors.deepPurple,
                child: Text('Card'),
              )
            ),
            Center(
              child: Card( 
                color: Colors.deepOrange,
                child: Text('Card'),
              )
            ),
            Center(
              child: Card( 
                color: Colors.blueGrey,
                child: Text('Card'),
              )
            ),
            Center(
              child: Card( 
                color: Colors.deepPurple,
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                color: Colors.deepOrange,
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                color: Colors.blueGrey,
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                color: Colors.deepPurple,
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                color: Colors.deepOrange,
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                color: Colors.blueGrey,
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                color: Colors.deepPurple,
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                color: Colors.deepOrange,
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                color: Colors.blueGrey,
                child: Text('Card'),)
            ),
          ],
        ),
      ),
    );
  }
}
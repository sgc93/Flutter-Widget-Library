import 'package:flutter/material.dart';

class GridViewCount extends StatefulWidget {
  const GridViewCount({super.key});
  
  @override
  State<GridViewCount> createState(){
    return _GridViewCountState();
  }
}

class _GridViewCountState extends State<GridViewCount> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView.count'),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 2,
          children: const [
            Center(
              child: Card( 
                child: Text('Card'),
              )
            ),
            Center(
              child: Card( 
                child: Text('Card'),
              )
            ),
            Center(
              child: Card( 
                child: Text('Card'),
              )
            ),
            Center(
              child: Card( 
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                child: Text('Card'),)
            ),
            Center(
              child: Card( 
                child: Text('Card'),)
            ),
          ],
        ),
      ),
    );
  }
}
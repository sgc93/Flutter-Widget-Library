import 'package:flutter/material.dart';

class GridViewbuilder extends StatefulWidget {
  const GridViewbuilder({super.key});
  
  @override
  State<GridViewbuilder> createState(){
    return _GridViewbuilderState();
  }
}

class _GridViewbuilderState extends State<GridViewbuilder> {
  List<Widget> imageList = [
    Image.asset('assets/images/img1.png'),
    Image.asset('assets/images/img2.png'),
    Image.asset('assets/images/img3.jpeg'),
    Image.asset('assets/images/img4.jpeg'),
    Image.asset('assets/images/img5.jpeg'),
    Image.asset('assets/images/img6.jpeg'),
    Image.asset('assets/images/img1.png'),
    Image.asset('assets/images/img2.png'),
    Image.asset('assets/images/img3.jpeg'),
    Image.asset('assets/images/img4.jpeg'),
    Image.asset('assets/images/img5.jpeg'),
    Image.asset('assets/images/img6.jpeg'),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView.builder'),
      ),
      body: Container(
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: imageList.length,
          itemBuilder:(context, index) {
            return imageList[index];
          },
        ),
      ),
    );
  }
}
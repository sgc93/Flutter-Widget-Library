import 'package:flutter/material.dart';

class ImgList extends StatefulWidget {
  const ImgList({super.key});
  
  @override
  State<ImgList> createState(){
    return _ImgListState();
  }
}

class _ImgListState extends State<ImgList> {
  List<Widget> imageList = [
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
        title: const Text('Image ListView'),
      ),
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(5),
          itemCount: 6,
          itemBuilder: (BuildContext context, index){
            return imageList[index];
          }),
        ),
    );
  }
}
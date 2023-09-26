import 'package:flutter/material.dart';

class SeparatedList extends StatefulWidget {
  const SeparatedList({super.key});
  
  @override
  State<SeparatedList> createState(){
    return _SeparatedListState();
  }
}

class _SeparatedListState extends State<SeparatedList> {
  List<int> shadeList = [50, 100, 200, 300, 400, 600, 700, 800, 900];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image ListView'),
      ),
      body: Container(
        child: ListView.separated(
          padding: const EdgeInsets.all(50.0),
          itemCount: 9,
          itemBuilder: (BuildContext context, index){
            return Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(5),
              height: MediaQuery.of(context).size.width * 0.5,
              color: Colors.red[shadeList[index]],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Text(
              'red ${shadeList[index]}'
            );
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({super.key});
  
  @override
  State<FutureBuilderWidget> createState(){
    return _FutureBuilderWidgetState();
  }
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureBuilder'),
      ),
      body: _showImage(),
    );
  }

  Widget _showImage(){
    return FutureBuilder(
      future: _fetchImageData(),
      builder: (
        BuildContext context,
        AsyncSnapshot snapshot,
      ){
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center( child: CircularProgressIndicator());
        } else if (snapshot.hasError){
          return Text(snapshot.error.toString());
        } else {
          return Center(
            child: Text(snapshot.data),
          );
        }
      });
  }

  Future<String> _fetchImageData() {
    return Future.delayed( const Duration(seconds: 3), (){
        return 'The image is take on 24th, july';
      });
  }
}

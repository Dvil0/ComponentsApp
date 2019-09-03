import 'package:flutter/material.dart';

class AlertView extends StatelessWidget{

  @override
  Widget build( BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_back_ios),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );

  }
}

import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerView extends StatefulWidget{

  _AnimatedContainerViewState createState(){
    return _AnimatedContainerViewState();
  }
}

class _AnimatedContainerViewState extends State<AnimatedContainerView>{

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);


  @override
  Widget build( BuildContext context ){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
            ),
            duration: Duration( seconds: 1 ),
            curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        
        child: Icon( Icons.play_arrow ),
        backgroundColor: Colors.black87,
        onPressed: _formChange
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _formChange(){

    final random = Random();

    setState(() {
      
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255), 
        random.nextInt(255), 
        1);

        _borderRadius = BorderRadius.circular( random.nextInt(100).toDouble() );
    });
  }
}
import 'package:flutter/material.dart';
import 'package:components/src/views/home_view.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build( BuildContext context ){
    return MaterialApp(
      title: 'ComponentsApp',
      debugShowCheckedModeBanner: false,
      home: HomeView()
    );
  }
}

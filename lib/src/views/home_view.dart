import 'package:components/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget{

  @override
  Widget build( BuildContext context ){

    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _list(),
    );
  }

  Widget _list() {

    print( menuProvider.options );

    return ListView(
        children: _createItemList(),
      );
  }

  List<Widget> _createItemList() {

    return [
      ListTile(title: Text('Hola mundo')),
      Divider(),
      ListTile(title: Text('Hola mundo')),
      Divider(),
      ListTile(title: Text('Hola mundo')),
      Divider(),
    ];
  }
}
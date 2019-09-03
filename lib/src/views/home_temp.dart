import 'package:flutter/material.dart';

class HomeTempView extends StatelessWidget{

  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build( BuildContext context ){

    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        //children: _createItems()
        children: _createItemsShort()
      ),
    );

  }

  List<Widget> _createItems(){
    
    List<Widget> list = new List<Widget>();

    for(String item in options){

      final tempWidget = ListTile(
        title: Text( item ),
      );

      list..add(tempWidget)
          ..add(Divider());
    }
    return list;
  }

  List<Widget> _createItemsShort(){

    var widgets = options.map( ( item ){
      
      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item ),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;
  }
}
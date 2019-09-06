import 'package:flutter/material.dart';
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/Utils/icon_string_util.dart';

class HomeView extends StatelessWidget{

  @override
  Widget build( BuildContext context ){

    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
        backgroundColor: Colors.black87,
      ),
      body: _list(),
    );
  }

  Widget _list() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot){

        return ListView(
          children: _createItemList( snapshot.data, context ),
        );
      }
    );
  }

  List<Widget> _createItemList( List<dynamic> data, BuildContext context ) {

    final List<Widget> options = [];

    data.forEach( (obj){

      final widgetTemp = ListTile(
        title: Text( obj['texto'] ),
        leading: getIcon( obj['icon'] ),
        trailing: Icon( 
          Icons.keyboard_arrow_right,
          color: Colors.black,
         ),
         onTap: (){
           

           Navigator.pushNamed(context, obj['ruta']);
          //  final route = MaterialPageRoute(
          //    builder: ( context ) => AlertView(),
          //  );

          //  Navigator.push(context, route);

         },
      );

      options..add( widgetTemp )
             ..add( Divider() );            
    });
    
    return options;
  }
}
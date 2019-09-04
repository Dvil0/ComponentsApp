import 'package:flutter/material.dart';
import 'package:components/src/views/alert_view.dart';
import 'package:components/src/routes/routes.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build( BuildContext context ){
    return MaterialApp(
      title: 'ComponentsApp',
      debugShowCheckedModeBanner: false,
      //home: HomeView()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ){
        
        return MaterialPageRoute(
          builder: (BuildContext context ) => AlertView(),
        );
      },
    );
  }
}

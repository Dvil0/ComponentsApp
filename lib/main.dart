import 'package:flutter/material.dart';
import 'package:components/src/views/alert_view.dart';
import 'package:components/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES')
      ],
      onGenerateRoute: ( RouteSettings settings ){
        
        return MaterialPageRoute(
          builder: (BuildContext context ) => AlertView(),
        );
      },
    );
  }
}

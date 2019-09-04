import 'package:flutter/material.dart';

class CardView extends StatelessWidget{

  @override
  Widget build ( BuildContext context ){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
          SizedBox(height: 30.0),
          _cardType1(),
          SizedBox(height: 30.0),
          _cardType2(),
        ],
      ),
    );
  }

  Widget _cardType1() {
  
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Test'),
            leading: Icon( Icons.photo_album, color: Colors.black),
            subtitle: Text('Descripcion de prueba para visualizar el ejercicio de cards dentro de la pantalla del dispositivo.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Aceptar'),
                onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
}

  Widget _cardType2() {

    final card =  Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://external-preview.redd.it/1-Lewm5uBfWnU3c0l5dyliSc_FQLrxfqWjepkZ82VLU.jpg?auto=webp&s=267afa31eb89d5624b1bca4d7e09d2b661d364ef'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200 ),
            height: 200.0,
            fit: BoxFit.cover,
            
          ),
          // Image(
          //   image: NetworkImage('https://external-preview.redd.it/1-Lewm5uBfWnU3c0l5dyliSc_FQLrxfqWjepkZ82VLU.jpg?auto=webp&s=267afa31eb89d5624b1bca4d7e09d2b661d364ef'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Fate Stay Night Unlimited Blade Works'),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset( 2.0, 10.0 )
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
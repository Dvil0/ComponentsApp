import 'package:flutter/material.dart';

class AlertView extends StatelessWidget{

  @override
  Widget build( BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Alert'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        child: Icon( Icons.arrow_back_ios),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show Alert'),
          color: Colors.black87,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _showAlert( context ),
        )
      ),
    );

  }

  void _showAlert( BuildContext context ){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('This is contain of box into alert'),
              FlutterLogo(size: 100.0)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              textColor: Colors.black,
              child: Text('Cancel'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              textColor: Colors.black,
              child: Text('Accept'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      }
    );
  }
}
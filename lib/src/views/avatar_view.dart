import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Avatar'),
        actions: <Widget>[
          
          Container(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('http://www.anime-evo.net/wp-content/uploads/2015/06/UBW2_24_1-640x250.jpg'),
              radius: 25.0,
            )
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SE'),
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://littlecloudcuriosity.files.wordpress.com/2015/06/fate-stay-night-unlimited-blade-works-episode-24-35.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration( milliseconds: 200),
        ),
      ),
    );
  }
}
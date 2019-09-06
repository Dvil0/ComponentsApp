import 'package:flutter/material.dart';
import 'dart:async';

class ListsView extends StatefulWidget{

  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<ListsView>{

  ScrollController _scrollController = new ScrollController();
  List<int> _numbers = new List();
  int _lastItem = 0;
  bool _loading = false;

  @override
  void initState(){
    super.initState();

    _addTenImage();
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        //_addTenImage();

        _fetchData();
      }
    });
  }

  @override
  void dispose(){
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build( BuildContext context ){

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
        backgroundColor: Colors.black87,
      ),
      body: Stack(
        children: <Widget>[
          _createList(),
          _createLoading()
        ],
      )
    );
  }

  Widget _createList(){
    return RefreshIndicator(
        child: ListView.builder(
          controller: _scrollController,
          itemCount: _numbers.length,
          itemBuilder: ( BuildContext context, int index ){

            final image = _numbers[index];

            return FadeInImage(
              image: NetworkImage('https://picsum.photos/500/300/?image=$image'),
              placeholder: AssetImage('assets/jar-loading.gif'),
            );
          },
      ),
      onRefresh: _getPageOne,
    );
  }

  Future<Null> _getPageOne() async{
    final duration = new Duration(seconds: 2);
    new Timer(duration, (){
      _numbers.clear();
      _lastItem++;
      _addTenImage();
    });

    return Future.delayed(duration);
  }

  void _addTenImage(){

    for (var i = 0; i < 10; i++) {
      _lastItem++;
      _numbers.add( _lastItem );
    }

    setState(() {});
  }

  Future<Null> _fetchData() async{

    _loading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    return new Timer(
      duration,
      _responseHTTP
    );
  }

  void _responseHTTP(){
    _loading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 100,
      curve: Curves.fastOutSlowIn,
      duration: Duration(microseconds: 250)
    );
    _addTenImage();
  }

  Widget _createLoading() {
    if( _loading ){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 15.0,),
        ],
      );
    }
    else{
      return Container();
    }
  }
}
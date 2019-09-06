import 'package:flutter/material.dart';

class SliderView extends StatefulWidget{

  @override
  _SliderViewState createState(){
    return _SliderViewState();
  }
}

class _SliderViewState extends State<SliderView>{

  double _sliderValue = 20.0;
  bool _checked = false;

  @override
  Widget build( BuildContext context ){

    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _createCheckbox(),
            _createSwitch(),
            Expanded(
              child: _createImage()
            ),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Size of image',
      value: _sliderValue,
      min: 10.0,
      max: 400.0,
      onChanged: ( _checked ) ? null : ( valor ){
          setState(() {
          _sliderValue = valor; 
        });
      },
    );
  }

  Widget _createImage() {

    return Image(
      image: NetworkImage('https://static.zerochan.net/Fate.stay.night%3A.Unlimited.Blade.Works.full.2338400.jpg'),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheckbox() {
    // return Checkbox(
    //   value: _checked,
    //   onChanged: ( valor ){
    //     setState(() {
    //      _checked = valor; 
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _checked,
      onChanged: ( valor ){
        setState(() {
         _checked = valor; 
        });
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _checked,
      onChanged: ( valor ){
        setState(() {
         _checked = valor; 
        });
      },
    );
  }
}
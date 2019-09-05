import 'package:flutter/material.dart';

class InputView extends StatefulWidget{

  @override
  _InputViewState createState() => _InputViewState();

}

class _InputViewState extends State{

  String _nombre = '';
  String _email = '';
  String _password = '';
  String _fecha = '';
  String _optionSelected = 'Volar';
  TextEditingController _inputFieldDate = new TextEditingController();
  List<String> _powers = ['Volar', 'Rayos x', 'Super fuerza'];

  @override
  Widget build( BuildContext context ){

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
        backgroundColor: Colors.black87,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate( context ),
          Divider(),
          _createDropdown(),
          Divider(),
          _createPerson(),
          Divider(),
          
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder( 
          borderRadius: BorderRadius.circular( 20.0 )
        ),
        counter: Text('Letras ${ _nombre.length }'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo el nombre',
        suffixIcon: Icon( Icons.accessibility),
        icon: Icon( Icons.account_circle )
      ),
      onChanged: (valor){
        setState((){
          _nombre = valor;
        });
      },
    );
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_optionSelected),
    );
  }

  Widget _createEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder( 
          borderRadius: BorderRadius.circular( 20.0 )
        ),
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon( Icons.alternate_email),
        icon: Icon( Icons.email )
      ),
      onChanged: (valor){
        setState((){
          _email = valor;
        });
      },
    );
  }

  Widget _createPassword(){
    return TextField(
      obscureText: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder( 
          borderRadius: BorderRadius.circular( 20.0 )
        ),
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon( Icons.lock_open),
        icon: Icon( Icons.lock )
      ),
      onChanged: (valor){
        setState((){
          _password = valor;
        });
      },
    );
  }

  Widget _createDate( BuildContext context ) {
    return TextField(
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder( 
          borderRadius: BorderRadius.circular( 20.0 )
        ),
        hintText: 'Fecha nacimiento',
        labelText: 'Fecha nacimiento',
        suffixIcon: Icon( Icons.perm_contact_calendar),
        icon: Icon( Icons.calendar_today )
      ),
      controller: _inputFieldDate,
      onTap: (){
        
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate( context );
      },
    );
  }
        
  void _selectDate( BuildContext contexte) async{

    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),
      locale: Locale('es','ES')
    );

    if(picked != null){
      setState(() {
       _fecha = picked.toString(); 
       _inputFieldDate.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> _getOptionsDrop(){

    List<DropdownMenuItem<String>> list = new List();

    _powers.forEach( ( power ){
      list.add( DropdownMenuItem(
        child: Text(power),
        value: power
      ));
    });

    return list;
  }
  Widget _createDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0,),
        Expanded(
          child: DropdownButton(
            items: _getOptionsDrop(),
            value: _optionSelected,
            onChanged: ( obj ){
              setState(() {
              _optionSelected = obj; 
              });
            },
          ),
        )
      ],
    );
    
    
  }
}
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _pass = '';
  String _fecha = '';
  String _optSelect = 'volar';
  List _poderes = ['volar', 'Superfuerza', 'Superaliento'];

  TextEditingController _imputDateControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs de texto'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal : 20, vertical : 20),
          children : <Widget>[
            _crearImput(),
            Divider(),
            _crearEmail(),
            Divider(),
            _crearPass(),
            Divider(),
            _crearFecha(context),
            Divider(),
            _crearDropdown(),
            Divider(),
            _crearPersona(),

          ]
        ),
    );
  }

  Widget _crearImput() {

    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        counter: Text('Caracteres ' + _nombre.length.toString() ),
        hintText: 'Nombre y apellidos',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility_new),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (texto){
        //print('$_nombre');
        setState(() {
          _nombre = texto;
        });
      },
    );

  }


  Widget _crearEmail() {

    return TextField(
      //autofocus: true,
      //textCapitalization: TextCapitalization.sentences,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        counter: Text('Caracteres ' + _nombre.length.toString() ),
        hintText: 'user@example.com',
        labelText: 'Email',
        helperText: 'Solo es el email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.mail)
      ),
      onChanged: (texto){
        //print('$_nombre');
        setState(() {
          _email = texto;
        });
      },
    );



  }

  Widget _crearPass() {

    return TextField(
      //autofocus: true,
      //textCapitalization: TextCapitalization.sentences,
      //keyboardType: TextInputType.emailAddress,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        counter: Text('Caracteres ' + _nombre.length.toString() ),
        hintText: 'Contraseña',
        labelText: 'Contraseña',
        helperText: 'Solo es la password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock)
      ),
      onChanged: (texto){
        //print('$_nombre');
        setState(() {
          _pass = texto;
        });
      },
    );

  }

  Widget _crearFecha(BuildContext context) {

      return TextField(
      enableInteractiveSelection: false,
      controller: _imputDateControl,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        //counter: Text('Caracteres ' + _nombre.length.toString() ),
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',
        helperText: 'Solo es la fecha',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.perm_contact_calendar)
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
      
    );

  }

  _selectDate(BuildContext context) async {
    
    DateTime picked = await showDatePicker(
      context: context, 
      initialDate: new DateTime.now(), 
      firstDate: new DateTime(2015), 
      lastDate: new DateTime(2025),
      locale: Locale('es', 'ES')
    );

    if ( picked != null ){
      _fecha = picked.toString();
      _imputDateControl.text = _fecha;
    }

  }

  _crearDropdown() {

    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 25,),
        Expanded(
            child: DropdownButton(
            value: _optSelect,
            items: getOptDropdown(), 
            onChanged: (opt){
              setState(() {
                _optSelect = opt;
              });
            }
          ),
        ),
      ],
    );
    
    DropdownButton(
      value: _optSelect,
      items: getOptDropdown(), 
      onChanged: (opt){
        setState(() {
          _optSelect = opt;
        });
      }
    
    );

  }

  List<DropdownMenuItem<String>> getOptDropdown(){

    List<DropdownMenuItem<String>> lista = new List();
    
    _poderes.forEach((poder){

      lista.add( DropdownMenuItem(
        child : Text(poder),
        value: poder,
      ));
    });

    return lista;

  }

  Widget _crearPersona() {

    return ListTile(
      title: Text('Nombre: $_nombre'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_optSelect),
    );

  }


}
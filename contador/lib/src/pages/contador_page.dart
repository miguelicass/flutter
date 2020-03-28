import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
    State<StatefulWidget> createState() => _ContadorPageState();
  

}


class _ContadorPageState extends State<ContadorPage> {

    
  final TextStyle _mainTex = new TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  int _conteo = 0;

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(

        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Numero de clicks', style: _mainTex),
              Text(_conteo.toString(), style: TextStyle(fontSize: 40)),
            ],
          )
          //Text('Hola mundo'),
        ),
        floatingActionButton:  _crearBotones(),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
    }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: () {
            setState(() {
              _conteo = 0;
            });
          }
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar
        ),
        SizedBox(width: 5),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _sustraer
        )
      ]
    );
  }

  void _agregar() => setState(()=> _conteo++);
  
  void _sustraer() => setState((){
    if (_conteo == 0) {
            } else {
            _conteo--;
            }
  });

}
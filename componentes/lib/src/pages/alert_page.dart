import 'package:flutter/material.dart';

import 'package:componentes/src/utils/icono_string_util.dart';

class AlertPage extends StatelessWidget {
  //const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child : RaisedButton(
          child: Text('Mostrar Alerta',),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: (){_showAlert(context);},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: getIcon('arrow_back'),
          //Icon(Icons.add),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      //floatingActionButtonAnimator: (){},
    );
  }

  void _showAlert(BuildContext context) {
    
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children : <Widget>[
              Text('Esto el el texto que dberia preguntar algo. ¿Desea continuar?'),
              SizedBox(height: 40),
              FlutterLogo(size: 100,),
            ]
          ),
          actions : <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ]
        );
      },
    );
  }
}
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

final TextStyle mainTex = new TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
final int conteo = 0;

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
            Text('Numero de clicks:', style: mainTex),
            Text(conteo.toString(), style: TextStyle(fontSize: 40)),
          ],
        )
        //Text('Hola mundo'),
      ),
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //print('Hola mundo!');
          //conteo++;
        }
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}
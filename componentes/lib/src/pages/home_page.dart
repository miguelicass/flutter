//import 'dart:js';
import 'package:flutter/material.dart';

import 'package:componentes/src/utils/icono_string_util.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  //const HomePageTemp({Key key}) : super(key: key);

  final opciones = ['Test', 'Test1', 'Test2', 'Test3', 'Test7'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: _lista(),
    );
  }

Widget _lista(){

  /*
  menuProvider.cargarData().then((opciones){
    print('_lista');
    print(opciones);
  });

  return ListView(
    children: _listaItems(),
  );
  */

  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
      return ListView(
        children: _listaItems(snapshot.data, context),
      );
    },
  );

}

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    
    List<Widget> options = [];

    data.forEach((item){
      final widgetTemp = ListTile(
        title: Text('${item['texto']}'),
        subtitle: Text('${item['ruta']}'),
        //IconData icono =
        leading: getIcon(item['icon']),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.green),
        onTap: (){
          //final rAlert = MaterialPageRoute( builder : (context) => AlertPage());
          //Navigator.push(context, rAlert);
          Navigator.pushNamed(context, '${item['ruta']}');
        },
      );

      options..add(widgetTemp)
             ..add(Divider());


    });

    return options;

  }


}
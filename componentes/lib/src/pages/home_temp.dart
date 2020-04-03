import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  //const HomePageTemp({Key key}) : super(key: key);

  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems(){
   
   List<Widget> items = new List<Widget>();

   for (String opt in opciones) {
     final tempWidget = ListTile(
     title : Text(opt),
     );
     items..add(tempWidget)
          ..add(Divider());
   }
  return items;
  }
  
  List<Widget> _crearItemsCorta(){
    /*var widgets = */ return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$item!'),
            subtitle: Text('cualquier cosa'),
            leading: Icon(Icons.offline_pin),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();

   // return widgets;
  }

}
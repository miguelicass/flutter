import 'package:flutter/material.dart';

import 'package:componentes/src/utils/icono_string_util.dart';

class CardPage extends StatelessWidget {
  //const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(

        padding: EdgeInsets.symmetric(horizontal:10, vertical: 10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 5),
          _cardTipo2(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(2),
            child : Text('Landscape Dubai')
          ),
          SizedBox(height: 5),
          _cardTipo1(),
          SizedBox(height: 5),
          _cardTipo2(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(2),
            child : Text('Landscape Dubai')
          ),
          SizedBox(height: 5),
          _cardTipo1(),
          SizedBox(height: 5),
          _cardTipo2(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(2),
            child : Text('Landscape Dubai')
          ),
          SizedBox(height: 5),
          _cardTipo1(),
          SizedBox(height: 5),
          _cardTipo2(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(2),
            child : Text('Landscape Dubai')
          ),
          SizedBox(height: 5),
          _cardTipo1(),
          SizedBox(height: 5),
          _cardTipo2(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(2),
            child : Text('Landscape Dubai')
          ),
          SizedBox(height: 5),
          _cardTipo1(),
          SizedBox(height: 5),
          _cardTipo2(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(2),
            child : Text('Landscape Dubai')
          ),
          SizedBox(height: 5),
          _cardTipo1(),
          SizedBox(height: 5),
          _cardTipo2(),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(2),
            child : Text('Landscape Dubai')
          ),
          SizedBox(height: 5),
        ],
      ),
      //floatingActionButtonAnimator: (){},
    );
  }

  Widget _cardTipo1(){

    final card = Card(
      //clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 1.0,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Título'),
            subtitle: Text('Este es el butitulo de la tarjeta. Es una prueba de texto largo. ¿Desea continuar?'),
            leading: Icon(Icons.photo_album, color: Colors.blue,),
          ),
          Row(
            mainAxisAlignment : MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              )
            ],
          )
        ]
      ),
    );
    return card;
  }


  Widget _cardTipo2(){

    final card = Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 1.0,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://wallup.net/wp-content/uploads/2015/12/213342-landscape-nature-skyscraper-lights-building-mist-sunrise-Dubai-sea-bay.jpg'),
            placeholder: AssetImage('assets/gifload.gif'), 
            fadeInDuration: Duration(milliseconds: 200),
            height: 300,
            fit: BoxFit.cover,
            ),

          /* Image(
            image: NetworkImage('https://wallup.net/wp-content/uploads/2015/12/213342-landscape-nature-skyscraper-lights-building-mist-sunrise-Dubai-sea-bay.jpg'),
          ), */

          /* Container(
            padding: EdgeInsets.all(5),
            child : Text('Landscape Dubai')
            ), */
        ]
      ),
    );

    return card;

    /* return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.red,
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30),
      ),
    ); */

  }



}
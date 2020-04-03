import 'package:flutter/material.dart';
import 'dart:async';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollControl = new ScrollController();
  List<int> _listaEnteros = new List();
  int numLoad = 0;
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _addTen();

    _scrollControl.addListener((){
      if (_scrollControl.position.pixels >= (_scrollControl.position.maxScrollExtent - 1)){
      
        //_addTen();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollControl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      ),
    );
  }

  Future <Null> obtenerPaginaOne() async{
    final duration = new Duration(seconds: 2);
    new Timer(duration, (){
      _listaEnteros.clear();
      numLoad++;
      _addTen();
    });

    return Future.delayed(duration);

  }


  Widget _crearLista(){

    return RefreshIndicator(
        onRefresh: obtenerPaginaOne, //required
        child: ListView.builder(
        controller : _scrollControl,
        itemBuilder: (BuildContext context, int index){
          final imagen = _listaEnteros[index];
          return FadeInImage(
            placeholder: AssetImage('assets/gifload.gif'), 
            image: NetworkImage('https://picsum.photos/id/$imagen/500/500'),
          );
        },
        itemCount: _listaEnteros.length,
      ),
    );

  }

  _addTen(){

    for (var i = 0; i < 10; i++) {
      numLoad++;
      _listaEnteros.add(numLoad);
    }
    setState(() {});
  }

  Future<Null> fetchData() async{

    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);

    return new Timer(duration, respuestaHTTP);

  }

  void respuestaHTTP(){

    _isLoading = false;
    _scrollControl.animateTo(
      (_scrollControl.position.pixels + 10),
      curve: Curves.fastOutSlowIn,
      duration: Duration(milliseconds: 200)
    );
    _addTen();

  }

  Widget _crearLoading() {
    if(_isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children : <Widget>[
          Row(
            //mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children : <Widget>[
              CircularProgressIndicator()
            ]
          ),
          SizedBox(height:50),
        ],
      );
    } else {
      return Container(
        child: null,
      );
    }
  }

}
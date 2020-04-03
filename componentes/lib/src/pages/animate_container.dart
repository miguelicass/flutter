import 'dart:math';

import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  //AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Container'),
        ),
        body: Center(
          child : AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            curve: Curves.fastOutSlowIn,
            width : _width,
            height : _height,
            decoration: BoxDecoration(
              color :  _color,    
              borderRadius : _borderRadius,
            ),
          )
        ),
        floatingActionButton: FloatingActionButton(
          child: getIcon('play_arrow'),
          onPressed: _setContainer,
        ),
    );
  }


  dynamic _setContainer(){
  
  final random = Random();

  setState(() {

    _width = random.nextInt(300).toDouble();
    _height = random.nextInt(300).toDouble();

    _color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      random.nextDouble()
    );
    
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

  });

  }

}
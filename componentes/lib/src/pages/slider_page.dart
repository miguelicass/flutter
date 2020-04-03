import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _slideValue = 200;
  bool _chekBlock = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sider'),      
      ),
      body: Container(
        padding: EdgeInsets.only(top:50),
        child: Column(
          children : <Widget>[
            _crearSlider(),
            SizedBox(height: 10,),
            Text((_slideValue/4.00).toInt().toString() + '%'),
            _crearSwitch(),
            SizedBox(height: 0,),
            _crearCheckBox(),
            Expanded(
              child: _crearImage()
            ),
          ]
      
        )
      ),
    );
  }

  _crearSlider() {

    return Slider(
      //  divisions: 20,
      activeColor: Colors.indigo,
      label: 'Tamaño de la imagen',
      value: _slideValue,
      min: 0,
      max: 400,
      onChanged: (_chekBlock) ? null : (valor){
        setState(() {
         _slideValue = valor;
        }); 
      },
    );

  }

  Widget _crearImage() {
    return Image(
      image: NetworkImage('https://4.bp.blogspot.com/-NT1uKQgh-Ho/XILQ4tCnb-I/AAAAAAAAJBI/Vc2gKJ2-200bNt85F5IBJIvEbZpTm_r6ACLcBGAs/s1600/Batman%2B1.png'),
      width: _slideValue,
      fit: BoxFit.contain
    );

  }

  _crearCheckBox() {
    /* return Checkbox(
      value: _chekBlock,
      onChanged: (valor){
        setState(() {
        _chekBlock = valor;
        }); 
      } ,
    ); */

    return CheckboxListTile(
      title: Text('Bloquear Slider CheckBox'),
      value: _chekBlock,
      onChanged: (valor){
        setState(() {
        _chekBlock = valor;
        }); 
      } ,
    );

  }

  _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider Switch'),
      value: _chekBlock,
      onChanged: (valor){
        setState(() {
        _chekBlock = valor;
        }); 
      } ,
    );
  }
}
import 'package:flutter/material.dart';

import 'package:componentes/src/utils/icono_string_util.dart';

class AvatarPage extends StatelessWidget {
  //const AvatarPage({Key key}) : super(key: key);
  static final pageName = 'avatar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions : <Widget> [
          Container(
            padding: EdgeInsets.all(7.5),
            margin: EdgeInsets.only(right: 2),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://lifestyle.americaeconomia.com/sites/lifestyle.americaeconomia.com/files/styles/gallery_image/public/2018-11-12t194414z_1_lynxnpeeab1dg_rtroptp_4_gente-stanlee.jpg?itok=-A6YzhAM'),
              radius: 20,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ] 
      ),
      //floatingActionButtonAnimator: (){},
    );
  }
}
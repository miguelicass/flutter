import 'package:flutter/material.dart';

import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/card_pages.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:componentes/src/pages/listview_page.dart';
import 'package:componentes/src/pages/animate_container.dart';

Map<String, WidgetBuilder> getRoutesApp(){


final rutas = <String, WidgetBuilder>{
      '/'                 : (BuildContext context) => HomePage(),
      'alert'             : (BuildContext context) => AlertPage(),
      AvatarPage.pageName : (BuildContext context) => AvatarPage(),
      'card'              : (BuildContext context) => CardPage(),
      'animatedContainer' : (BuildContext context) => AnimatedContainerPage(),
      'inputs'            : (BuildContext context) => InputPage(),
      'slider'            : (BuildContext context) => SliderPage(),
      'list'              : (BuildContext context) => ListaPage(),
      };

      return  rutas;
}
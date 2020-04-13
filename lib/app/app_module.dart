import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_class/app/app_controller.dart';
import 'package:flutter_modular_class/app/app_widget.dart';
import 'package:flutter_modular_class/app/other/other_page.dart';
import 'package:flutter_modular_class/app/pages/home_controller.dart';
import 'package:flutter_modular_class/app/pages/home_page.dart';

class AppModule extends MainModule{
  
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => HomeController()),
  ];
  
  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
    Router("/",child: (_, args) => HomePage()),
    Router("/other",child: (_, args) => OtherPage())
  ];

}
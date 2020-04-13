import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_class/app/app_controller.dart';
import 'package:flutter_modular_class/app/app_widget.dart';
import 'package:flutter_modular_class/app/pages/home_controller.dart';
import 'package:flutter_modular_class/app/pages/home_page.dart';
import 'package:flutter_modular_class/app/shared/repositories/poke_repository.dart';
import 'package:flutter_modular_class/app/shared/utils/constants.dart';

class AppModule extends MainModule{
  
  @override
  List<Bind> get binds => [
    Bind((i) => AppController()),
    Bind((i) => HomeController(i.get<PokeRepository>())),
    Bind((i) => PokeRepository(i.get<Dio>())),
    Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),

  ];
  
  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
    Router("/",child: (_, args) => HomePage()),
    
  ];

}
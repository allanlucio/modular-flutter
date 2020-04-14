import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_class/app/modules/home/home_controller.dart';
import 'package:flutter_modular_class/app/modules/home/home_page.dart';
import 'package:flutter_modular_class/app/modules/home/repositories/poke_repository.dart';

class HomeModule extends ChildModule{
  
  @override
  List<Bind> get binds => [
    Bind((i) => HomeController(i.get<PokeRepository>())),
    Bind((i) => PokeRepository(i.get<Dio>())),
  ];

  @override
  List<Router> get routers => [
    Router("/",child: (_, args) => HomePage()),
  ];

}
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_class/app/app_controller.dart';
import 'package:flutter_modular_class/app/app_widget.dart';
import 'package:flutter_modular_class/app/modules/home/home_module.dart';
import 'package:flutter_modular_class/app/shared/utils/constants.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
      ];
}

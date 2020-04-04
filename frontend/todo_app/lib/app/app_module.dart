import 'package:dio/dio.dart';
import 'package:todo_app/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/app/app_widget.dart';
import 'package:todo_app/app/modules/home/home_controller.dart';
import 'package:todo_app/app/modules/home/home_module.dart';
import 'package:todo_app/app/shared/constants.dart';
import 'package:todo_app/app/shared/repositories/home_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController(i.get<HomeRepository>())),
        Bind((i) => HomeRepository(i.get<Dio>())),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_API))),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

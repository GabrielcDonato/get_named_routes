import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class RouteMiddlewares extends GetMiddleware {
  RouteMiddlewares({super.priority});

  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint("executando middleware onPageCalled");
    //é chamado antes de ocorrer a criação da tela, então eu posso fazer um guard aqui,
    //verificando se o usuario pode ou n entrar nessa tela, caso n possa, consigo redirecionar ele para outra tela.
    // TODO: implement onPageCalled
    return super.onPageCalled(page);
    //   return GetPage(
    //   name: "/inicial/page1",
    //   page: () => const InicialPage1(),
    // );
  }

  @override
  Widget onPageBuilt(Widget page) {
    // TODO: implement onPageBuilt
    debugPrint("executando middleware onPageBuilt");
//antes de chamar o metodo build da pagina podemos executar algo, por exemplo trocar o tema da app;
    // return super.onPageBuilt(page);
    return Theme(data: ThemeData.dark(), child: page);
  }

  @override
  RouteSettings? redirect(String? route) {
    //Aqui é o método correto para fazermos uma validação.
    // TODO: implement redirect

    if (route == "/inicial/page1") {
      return const RouteSettings(
        name: "/accessDenied",
      );
    }
    return null;
  }

  @override
  void onPageDispose() {
    debugPrint("executando middleware onPageDispose");

    // TODO: implement onPageDispose
    super.onPageDispose();
  }

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    // TODO: implement onPageBuildStart
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    // TODO: implement onPageBuildStart
    return super.onPageBuildStart(page);
  }
}

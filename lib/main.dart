import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:named_routes/pages/inicial/inicial_page1.dart';
import 'package:named_routes/pages/route_not_found/route_not_found_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/home", //add to enable unknownroute
      //se eu deixar a home como / ele nunca vai cair no unknown route
      //pq ele entende q a rota padrão é a com /, por isso devemos especificar
      // basicamente a routa com somente a / é a rota principal.
      unknownRoute: GetPage(
        name: "/404",
        page: () => const RouteNotFoundPage(),
      ),
      getPages: [
        // GetPage(
        //   name: "/",
        //   page: () => const HomePage(),
        // ),
        GetPage(
          name: "/home", //add to enable unknownroute
          page: () => const HomePage(),
        ),
        GetPage(
          name: "/inicial/page1",
          page: () => const InicialPage1(),
        ),
      ],
    );
  }
}

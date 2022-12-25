import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:named_routes/pages/inicial/inicial_page1.dart';

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
      getPages: [
        GetPage(
          name: "/",
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PathParamPage extends StatelessWidget {
  const PathParamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Param'),
      ),
      body: Center(child: Text(Get.parameters["name"]!)),
      // body: Center(child: Text(Get.parameters["name"] ?? "Não encontrado")),
    );
  }
}

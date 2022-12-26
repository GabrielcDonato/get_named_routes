import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QueryParamPage extends StatelessWidget {
  const QueryParamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Query Param'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(Get.parameters["nome"] ?? ""),
          Text(Get.parameters["id"] ?? ""),
          Text(Get.parameters["curso"] ?? ""),
          Text(Get.parameters["idade"] ?? ""),
        ],
      )),
    );
  }
}

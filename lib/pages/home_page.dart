import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/inicial/page1");
              },
              child: const Text("Inicial"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/pagedontexist");
              },
              child: const Text("page not exist"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/sendParams");
              },
              child: const Text("Send params"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/middlewares");
              },
              child: const Text("Middlewares"),
            ),
          ],
        ),
      ),
    );
  }
}

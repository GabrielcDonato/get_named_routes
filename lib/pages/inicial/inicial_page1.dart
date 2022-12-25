import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InicialPage1 extends StatelessWidget {
  const InicialPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("/inicial/page1");
              },
              child: const Text("Inicial"),
            )
          ],
        ),
      ),
    );
  }
}

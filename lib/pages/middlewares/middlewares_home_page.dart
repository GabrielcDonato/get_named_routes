import 'package:flutter/material.dart';

class MiddlewaresHomePage extends StatelessWidget {
  MiddlewaresHomePage({Key? key}) : super(key: key) {
    debugPrint("Criando pagina MiddlewaresHomePage");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build pagina MiddlewaresHomePage");

    return Scaffold(
      appBar: AppBar(
        title: const Text('MiddleWares'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Test"),
        ),
      ),
    );
  }
}

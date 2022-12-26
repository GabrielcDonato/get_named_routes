import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Params'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  "/sendParams/arguments",
                  arguments: {
                    "curso": "jornada getx",
                    "name": "Gabriel Donato"
                  },
                );
              },
              child: const Text("Arguments"),
            ),
            ElevatedButton(
              onPressed: () {
                final param = Uri.encodeFull("Gabriel Donato");
                Get.toNamed(
                    "/sendParams/pathParam/$param/jornadaGetX"); // para colocar o espaço
                // Get.toNamed("/sendParams/pathParam/GabrielDonato/jornadaGetX");
                // Get.toNamed("/sendParams/pathParam/Gabriel Donato/jornadaGetX"); não aceita espaço
              },
              child: const Text("Path Param"),
              //São os parametros obrigatorios
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                    "/sendParams/queryParam?nome=Gabriel Donato&id=1&curso=jornada getx&idade=19");
                //São os parametros opcionais
                //o primeiro vem com o ? e dps todos com o E Comercial.
              },
              child: const Text("Query Param"),
            ),
            //tambem posso fazer dessa forma
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  "/sendParams/queryParam",
                  parameters: {
                    "nome": "Gabriel Donato",
                    "id": "1",
                    "curso": "Jornada getx",
                  },
                );
                //São os parametros opcionais
                //o primeiro vem com o ? e dps todos com o E Comercial.
              },
              child: const Text("Query Param using map "),
            ),
          ],
        ),
      ),
    );
  }
}

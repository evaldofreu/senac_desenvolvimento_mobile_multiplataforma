import 'dart:async';

import 'package:flutter/material.dart';

class ContadorBLOCScreen extends StatefulWidget {
  const ContadorBLOCScreen({super.key});

  @override
  State<ContadorBLOCScreen> createState() => _ContadorBLOCScreenState();
}

class _ContadorBLOCScreenState extends State<ContadorBLOCScreen> {
  final streamController = StreamController<int>();
  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int contador = 0;

    return Scaffold(
      body: StreamBuilder<int>(
          stream: streamController.stream,
          builder: (context, snapshot) => Center(
                child: Text(
                    "Vezes em que o botão foi pressionado: ${snapshot.data}"),
              )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            contador++;
            streamController.sink.add(contador);
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}



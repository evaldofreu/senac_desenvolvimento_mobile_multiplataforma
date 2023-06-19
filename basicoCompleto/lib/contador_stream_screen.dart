import 'dart:async';

import 'package:flutter/material.dart';

class ContadorStreamScreen extends StatefulWidget {
  const ContadorStreamScreen({super.key});

  @override
  State<ContadorStreamScreen> createState() => _ContadorStreamScreenState();
}

class _ContadorStreamScreenState extends State<ContadorStreamScreen> {
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

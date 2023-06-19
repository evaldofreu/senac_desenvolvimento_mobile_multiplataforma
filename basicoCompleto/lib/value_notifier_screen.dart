import 'package:flutter/material.dart';

class ValueNotifierScreen extends StatelessWidget {
  const ValueNotifierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var contador = ValueNotifier(0);
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: contador,
          builder: (context, snapshot, widget) {
            return Center(
              child: Text("Vezes em que o botão foi pressionado: $snapshot"),
            );
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () => contador.value++, child: Icon(Icons.plus_one)),
    );
  }
}

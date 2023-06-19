import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contador Stateless"),
        ),
        body: Center(
          child: Column(
            children: [
              CupertinoButton(child: Container(), onPressed: () {}),
              Text(
                "$contador",
                style: TextStyle(fontSize: 36),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            contador++;
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Botão foi pressionado!")));
          });
        }));
  }
}

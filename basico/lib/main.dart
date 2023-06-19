import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "App básico",
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        title: Text("App Básico"),
      ),
    ),
  ));
}

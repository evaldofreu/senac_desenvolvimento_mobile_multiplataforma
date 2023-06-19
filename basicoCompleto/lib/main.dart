//import 'package:basico/busca_tela/busca_dados_widget.dart';
//import 'package:basico/busca_tela/filme_repositorio.dart';
import 'package:basico/contador_stream_screen.dart';
import 'package:flutter/material.dart';

import 'animated_container_screen.dart';

//import 'busca_tela/busca_controlador.dart';
//import 'busca_tela/busca_tela_widget.dart';

main() {
  //var repositorio = FilmeRepositorio();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App Básico",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: BuscaTelaWidget(BuscaControlador(repositorio, BuscaDadosWidget(repositorio)))),
      home: const ContadorStreamScreen()));
  //home: const FutureBuilderWidget()));
}

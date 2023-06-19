import 'package:basico/busca_tela/busca_controlador.dart';
import 'package:basico/busca_tela/busca_dados_widget.dart';
import 'package:flutter/material.dart';

import 'busca_campo_widget.dart';
import 'busca_lista_widget.dart';

class BuscaTelaWidget extends StatelessWidget {
  final BuscaControlador controlador;
  const BuscaTelaWidget(this.controlador, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CampoBuscaWidget(controlador),
      ),
      body: BuscaListaWidget(controlador),
    );
  }
}

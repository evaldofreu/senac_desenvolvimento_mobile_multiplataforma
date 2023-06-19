import 'package:flutter/material.dart';

import 'busca_controlador.dart';
import 'busca_lista_item_widget.dart';

class BuscaListaWidget extends StatelessWidget {
  final BuscaControlador controlador;
  const BuscaListaWidget(this.controlador, {super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: controlador.dados.pesquisando,
        builder: (context, value, child) => value
            ? const Center(
                child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ))
            : ListView.builder(
                itemCount: controlador.dados.filmes.value.length,
                itemBuilder: (context, index) => BuscaListaItemWidget(
                    controlador.dados.filmes.value[index])));
  }
}

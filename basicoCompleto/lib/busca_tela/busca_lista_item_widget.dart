import 'package:flutter/material.dart';

import 'filme_modelo.dart';

class BuscaListaItemWidget extends StatelessWidget {
  final FilmeModelo filme;
  const BuscaListaItemWidget(this.filme, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 5,
        child: ListTile(
          title: Text(filme.titulo),
          subtitle: Text(filme.genero),
        ));
  }
}

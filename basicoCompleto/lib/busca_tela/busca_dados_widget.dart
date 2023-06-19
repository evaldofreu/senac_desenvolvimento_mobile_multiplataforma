import 'package:basico/busca_tela/filme_modelo.dart';
import 'package:flutter/material.dart';

import 'filme_repositorio.dart';

class BuscaDadosWidget {
  final FilmeRepositorio repositorio;

  BuscaDadosWidget(this.repositorio);

  ValueNotifier<List<FilmeModelo>> filmes = ValueNotifier(<FilmeModelo>[]);

  ValueNotifier<bool> pesquisando = ValueNotifier(false);
}

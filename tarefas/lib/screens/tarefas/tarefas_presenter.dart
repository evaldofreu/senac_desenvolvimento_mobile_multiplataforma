import 'package:flutter/material.dart';

import 'tarefas_entity.dart';
import 'tarefas_interactor.dart';

class TarefasPresenter {
  ValueNotifier tarefas = ValueNotifier(<Tarefa>[]);
  final TarefasInteractor interactor;

  TarefasPresenter({required this.interactor});

  listarTarefas() {
    interactor.listar().then((value) => tarefas.value = value);
  }

  void conclusao(int index, bool concluida) {
    List<Tarefa> _tarefas = tarefas.value;
    _tarefas[index].concluida = concluida;
    tarefas.value = null;
    tarefas.value = _tarefas;
  }
}

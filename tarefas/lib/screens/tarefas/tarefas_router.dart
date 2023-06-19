import 'package:flutter/material.dart';

import 'tarefas_interactor.dart';
import 'tarefas_presenter.dart';
import 'tarefas_view.dart';

class TarefasRouter {
  static Widget route() {
    return TarefasView(
      presenter: TarefasPresenter(interactor: TarefasInteractor()),
    );
  }
}

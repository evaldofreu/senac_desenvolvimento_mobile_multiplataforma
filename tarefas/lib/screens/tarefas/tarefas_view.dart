import 'package:flutter/material.dart';
import 'package:tarefas/screens/tarefas/tarefas_presenter.dart';

class TarefasView extends StatelessWidget {
  final TarefasPresenter presenter;

  const TarefasView({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    presenter.listarTarefas();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarefas"),
      ),
      body: ValueListenableBuilder(
          valueListenable: presenter.tarefas,
          builder: (context, tarefas, child) => ListView.builder(
                itemCount: tarefas?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  if (tarefas == null) {
                    return const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.blue),
                      ),
                    );
                  } else {
                    final tarefa = tarefas![index];
                    return ListTile(
                      title: Text(tarefa.titulo),
                      subtitle: Text(tarefa.descricao),
                      trailing: Checkbox(
                        value: tarefa.concluida,
                        onChanged: (value) {
                          presenter.conclusao(index, value ?? false);
                        },
                      ),
                    );
                  }
                },
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Adicionar nova tarefa
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

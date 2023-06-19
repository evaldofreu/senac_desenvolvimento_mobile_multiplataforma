import 'tarefas_entity.dart';

class TarefasInteractor {
  Future<List<Tarefa>> listar() async {
    await Future.delayed(const Duration(seconds: 1));
    return List.generate(
      10,
      (index) => Tarefa(
        titulo: "Tarefa $index",
        descricao: "Esta é a descrição da tarefa número $index.",
        concluida: false,
      ),
    );
  }
}

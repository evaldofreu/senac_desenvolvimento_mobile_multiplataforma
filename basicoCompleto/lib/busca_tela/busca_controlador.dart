import 'package:basico/busca_tela/busca_dados_widget.dart';
import 'package:basico/busca_tela/filme_repositorio.dart';

import 'filme_modelo.dart';

class BuscaControlador {
  final FilmeRepositorio repository;
  final BuscaDadosWidget dados;
  BuscaControlador(this.repository, this.dados);

  pesquisar(String termo) async {
    dados.pesquisando.value = true;
    try {
      var filmes = await repository.obter();

      var localizados = <FilmeModelo>[];
      for (var filme in filmes) {
        if (filme.titulo.contains(termo)) localizados.add(filme);
      }
      dados.filmes.value = localizados;
      dados.pesquisando.value = false;
    } catch (e) {
      dados.pesquisando.value = false;
      print(e);
      throw "Busca pelo filme falhou!";
    }
  }
}

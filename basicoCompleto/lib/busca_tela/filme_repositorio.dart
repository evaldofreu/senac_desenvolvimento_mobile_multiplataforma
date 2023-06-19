import 'dart:convert';

import 'package:basico/busca_tela/filme_modelo.dart';
import 'package:flutter/services.dart';

class FilmeRepositorio {
  Future<List<FilmeModelo>> obter() async {
    var dado = await rootBundle.loadString('json/movies.json');
    var json = jsonDecode(dado);
    List<FilmeModelo> filmes = json
        .map<FilmeModelo>((elemento) => FilmeModelo.fromJson(elemento))
        .toList();
    return filmes;
  }
}

import 'dart:convert';

import 'maquiagem.dart';
import 'package:http/http.dart' as http;

class Repo {
  Future<List<dynamic>> obterMaquiagens() async {
    var url =
        "https://makeup-api.herokuapp.com/api/v1/products.json?product_category=lipstick&product_type=lipstick";
    return await http.get(Uri.parse(url)).then((resposta) {
      if (resposta.statusCode == 200) {
        var objetos = json.decode(resposta.body);

        return objetos.map((e) => Maquiagem.fromJson(e)).toList();
      } else {
        throw "Falha obtendo produtos!";
      }
    });
  }
}

class FilmeModelo {
  String titulo;
  String genero;
  FilmeModelo(this.titulo, this.genero);

  factory FilmeModelo.fromJson(Map<String, dynamic> elemento) {
    return FilmeModelo(elemento['Title'] ?? "", elemento['Genre'] ?? "");
  }
}

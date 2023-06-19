class Maquiagem {
  final int? id;
  final String? nome;
  final String? marca;
  final String? imagem;

  factory Maquiagem.fromJson(Map<String, dynamic> e) {
    return Maquiagem(
        id: e["id"],
        nome: e["name"],
        marca: e["brand"],
        imagem: e["image_link"]);
  }

  Maquiagem({this.id, this.nome, this.marca, this.imagem});
}

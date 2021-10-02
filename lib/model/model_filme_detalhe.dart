import 'dart:convert';

class ModelFilmeDetalhe {
  String discricao;
  String nomeFilme;
  String imageFilme;
  List listaAtor;

  ModelFilmeDetalhe({
    required this.discricao,
    required this.nomeFilme,
    required this.imageFilme,
    required this.listaAtor,
  });

  //retornado um Modelo do time filme apartir de map
  factory ModelFilmeDetalhe.fromMap(Map<String, dynamic> map) {
    return ModelFilmeDetalhe(
      nomeFilme: (map['title'] ?? "").toString(),
      discricao: (map['plot'] ?? "").toString(),
      imageFilme: (map['image'] ?? "").toString(),
      listaAtor: map["actorList"] ?? [],
    );
  }
  //apartir de json transformando em map
  factory ModelFilmeDetalhe.fromJson(String source) =>
      ModelFilmeDetalhe.fromMap(json.decode(source));
  //apartir de um model transformando em json

}

  

//from = a partir de
//to = para

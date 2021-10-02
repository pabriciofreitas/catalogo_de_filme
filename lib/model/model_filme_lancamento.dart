import 'dart:convert';

class ModelFilmeLancamento {
  String discricao;
  String nomeFilme;
  String imageFilme;
  List listaAtor;

  ModelFilmeLancamento({
    required this.discricao,
    required this.nomeFilme,
    required this.imageFilme,
    required this.listaAtor,
  });

  //retornado um Modelo do time filme apartir de map
  factory ModelFilmeLancamento.fromMap(Map<String, dynamic> map) {
    return ModelFilmeLancamento(
      nomeFilme: (map['title'] ?? "").toString(),
      discricao: (map['plot'] ?? "").toString(),
      imageFilme: (map['image'] ?? "").toString(),
      listaAtor: map["actorList"] ?? [],
    );
  }
  //apartir de json transformando em map
  factory ModelFilmeLancamento.fromJson(String source) =>
      ModelFilmeLancamento.fromMap(json.decode(source));
  //apartir de um model transformando em json

}

  

//from = a partir de
//to = para

import 'dart:convert';

class ModelFilme {
  String idFilme;
  String nomeFilme;
  String imageFilme;

  ModelFilme({
    required this.idFilme,
    required this.nomeFilme,
    required this.imageFilme,
  });

  //transformando um modelfilme em map
  Map<String, dynamic> toMap() {
    return {
      'idFilme': idFilme,
      'nomeFilme': nomeFilme,
      'imageFilme': imageFilme,
    };
  }

  //retornado um Modelo do time filme apartir de map
  factory ModelFilme.fromMap(Map<String, dynamic> map) {
    return ModelFilme(
      idFilme: (map['id'] ?? "").toString(),
      nomeFilme: (map['title'] ?? "").toString(),
      imageFilme: (map['image'] ?? "").toString(),
    );
  }
  //apartir de json transformando em map
  factory ModelFilme.fromJson(String source) =>
      ModelFilme.fromMap(json.decode(source));
  //apartir de um model transformando em json
  String toJson() => json.encode(toMap());
}

  

//from = a partir de
//to = para

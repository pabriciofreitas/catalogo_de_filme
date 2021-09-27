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
      idFilme: map['id'],
      nomeFilme: map['title'],
      imageFilme: map['image'],
    );
  }
  //apartir de json transformando em map
  factory ModelFilme.fromJson(String source) =>
      ModelFilme.fromMap(json.decode(source));
  //apartir de um model transformando em json
  String toJson() => json.encode(toMap());
}

class Aluno {
  String alunoId;
  String alunoNome;
  int alunoMedia;

  Aluno(
      {required this.alunoId,
      required this.alunoNome,
      required this.alunoMedia});

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      alunoId: map['id'],
      alunoNome: map['nome'],
      alunoMedia: map['media'],
    );
  }

  factory Aluno.fromJson(String source) => Aluno.fromMap(json.decode(source));
}

//from = a partir de
//do = para

import 'package:flutter/material.dart';

import '../../model/model_filme.dart';
import '../pages/page.dart';

class ListFilmeHorizontal extends StatefulWidget {
  const ListFilmeHorizontal({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<ListFilmeHorizontal> createState() => _ListFilmeHorizontalState();
}

class _ListFilmeHorizontalState extends State<ListFilmeHorizontal> {
  List<Map<String, String>> dados = Dados.dados;
  late List<ModelFilme> ListModelFilme;
  List<ModelFilme> _carregaFilme(response) {
    List<ModelFilme> r = [];
    for (Map<String, dynamic> filme in response) {
      r.add(ModelFilme.fromMap(filme));
      filme["image"];
    }

    return r;
  }

  @override
  void initState() {
    super.initState();
    ListModelFilme = _carregaFilme(dados);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: widget.size.height * 0.45,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.04),
            separatorBuilder: (context, index) => SizedBox(
                  width: widget.size.width * 0.04,
                ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return FilmeHome(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetalhePage()));
                },
                size: widget.size,
                image: ListModelFilme[index].imageFilme,
                nome: ListModelFilme[index].nomeFilme,
              );
            },
            itemCount: 10));
  }
}

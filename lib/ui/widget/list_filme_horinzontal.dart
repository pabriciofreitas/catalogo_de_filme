import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../model/model_filme.dart';
import '../pages/page.dart';

class ListaFilmeHorizontal extends StatelessWidget {
  List<ModelFilme> listModelFilme;

  final Size size;

  ListaFilmeHorizontal({
    Key? key,
    required this.listModelFilme,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size.height * 0.45,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
            separatorBuilder: (context, index) => SizedBox(
                  width: size.width * 0.04,
                ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return listModelFilme.isEmpty
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Shimmer.fromColors(
                          baseColor: Theme.of(context).colorScheme.onBackground,
                          highlightColor: Colors.grey[500]!,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: size.height * 0.37,
                            width: size.width * 0.4,
                          ),
                        ),
                        Shimmer.fromColors(
                          baseColor: Theme.of(context).colorScheme.onBackground,
                          highlightColor: Colors.grey[500]!,
                          child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: size.width * 0.4,
                                height: 20,
                              )),
                        )
                      ],
                    )
                  : FilmeHome(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetalhePage()));
                      },
                      size: size,
                      image: listModelFilme[index].imageFilme,
                      nome: listModelFilme[index].nomeFilme,
                    );
            },
            itemCount: 10));
  }
}

/*
 Column(children: [
                      Shimmer.fromColors(
                        baseColor: Colors.grey,
                        highlightColor: Colors.grey[300]!,
                        child: Container(
                          color: Theme.of(context).colorScheme.background,
                          height: size.height * 0.37,
                          width: size.width * 0.4,
                        ),
                      ),
                      Container()
                    ])

import 'package:flutter/material.dart';

import '../../model/model_filme.dart';
import '../pages/page.dart';

class ListFilmeHorizontal extends StatefulWidget {
  List<ModelFilme> listModelFilme;

  ListFilmeHorizontal({
    Key? key,
    required this.listModelFilme,
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
                image: widget.listModelFilme[index].imageFilme,
                nome: widget.listModelFilme[index].nomeFilme,
              );
            },
            itemCount: 10));
  }
}

*/
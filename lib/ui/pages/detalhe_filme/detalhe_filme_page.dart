import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../../model/model_filme_detalhe.dart';
import '../page.dart';

class DetalhePage extends StatefulWidget {
  String id;
  DetalhePage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<DetalhePage> createState() => _DetalhePageState();
}

class _DetalhePageState extends State<DetalhePage> {
  HttpAdapter controller = HttpAdapter(client: Client());
  late ModelFilmeDetalhe filmeDetalhe;

  carregaDados() async {
    print(widget.id);
    final response = await controller.request(
        //problema que id ta dando erro
        url: "https://imdb-api.com/pt-BR/API/Title/k_c7j572lj/${widget.id}",
        method: "get");

    setState(() {
      filmeDetalhe = ModelFilmeDetalhe.fromMap(response);
    });

    // print(filmeDetalhe.discricao);
    //image
    //title
    //plot = discrição do filme
    //actorList - {image, name}
  }

  @override
  void initState() {
    super.initState();
    carregaDados();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MinhaAppBar(
        text: "Detalhes do filme",
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: ListView(
        children: [
          //filme detaque
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
            child: FilmeDestaque(
              titulo: filmeDetalhe.nomeFilme,
              nomeAtor:
                  "${filmeDetalhe.listaAtor[0]["name"]} - ${filmeDetalhe.listaAtor[1]["name"]} - ${filmeDetalhe.listaAtor[2]["name"]}",
              size: size,
              url: filmeDetalhe.imageFilme,
            ),
          ),
          Container(
              width: double.infinity,
              height: size.height * 0.003,
              color: Theme.of(context).colorScheme.surface),
          //descrição
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.04, horizontal: size.width * 0.06),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Sinopse",
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.04),
                child: SizedBox(
                  width: 400,
                  height: 200,
                  child: Text(
                    filmeDetalhe.discricao,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          height: 1.2,

                          leadingDistribution: TextLeadingDistribution.even,
                          //textBaseline: TextBaseline.alphabetic,
                          overflow: TextOverflow.ellipsis,
                        ),
                    textAlign: TextAlign.justify,
                    maxLines: 10,
                  ),
                ),
              ),
            ]),
          ),
          Container(
              width: double.infinity,
              height: size.height * 0.003,
              color: Theme.of(context).colorScheme.surface),
          //Elenco //atorList 1 Leonardo DiCaprio 2-Joseph Gordon 3 Christopher Nolan
          Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.04,
                left: size.width * 0.06,
                right: size.width * 0.06),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Elenco",
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.02,
                ),
                child: SizedBox(
                  width: size.width * 0.9,
                  height: size.width * 0.38,
                  // color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Elenco(
                        size: size,
                        image: filmeDetalhe.listaAtor[0]["image"],
                        nome: filmeDetalhe.listaAtor[0]["name"],
                      ),
                      Elenco(
                        size: size,
                        image: filmeDetalhe.listaAtor[1]["image"],
                        nome: filmeDetalhe.listaAtor[1]["name"],
                      ),
                      Elenco(
                        size: size,
                        image: filmeDetalhe.listaAtor[2]["image"],
                        nome: filmeDetalhe.listaAtor[2]["name"],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.04,
              )
            ]),
          ),
        ],
      ),
    );
  }
}

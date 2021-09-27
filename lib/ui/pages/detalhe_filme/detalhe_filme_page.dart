import 'package:flutter/material.dart';

import '../page.dart';

class DetalhePage extends StatelessWidget {
  const DetalhePage({Key? key}) : super(key: key);

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
            child: FilmeDestaque(size: size),
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
                    "Dom Cobb é um ladrão com a rara habilidade de roubar segredos do inconsciente, obtidos durante o estado de sono. Impedido de retornar para sua família, ele recebe a oportunidade de se redimir ao realizar uma tarefa aparentemente impossível: plantar uma ideia na mente do herdeiro de um império. Para realizar o crime perfeito, ele conta com a ajuda do parceiro Arthur, o discreto Eames e a arquiteta de sonhos Ariadne. Juntos, eles correm para que o inimigo não antecipe seus passos.",
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
                  height: size.width * 0.34,
                  //color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Elenco(
                        size: size,
                        image: "lib/assets/images/ator1.jpg",
                        nome: "Leonardo DiCaprio",
                      ),
                      Elenco(
                        size: size,
                        image: "lib/assets/images/ator2.jpg",
                        nome: "Joseph Gordon",
                      ),
                      Elenco(
                        size: size,
                        image: "lib/assets/images/ator3.jpg",
                        nome: "Christopher Nolan",
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

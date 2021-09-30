/*import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../dados/teste.dart';
import '../../../model/model_filme.dart';
import '../../widget/filme_ver_mais.dart';
import '../page.dart';

class VerMaisPage extends StatefulWidget {
  String textTema;
  VerMaisPage({
    Key? key,
    required this.textTema,
  }) : super(key: key);

  @override
  State<VerMaisPage> createState() => _VerMaisPageState();
}

class _VerMaisPageState extends State<VerMaisPage> {
  late List<ModelFilme> bi;
  late List<String> urlImages;
  List<Map<String, dynamic>> a = Dados.teste;

  List<ModelFilme> _carregaFilme(response) {
    List<ModelFilme> r = [];
    for (Map<String, dynamic> filme in response) {
      r.add(ModelFilme.fromMap(filme));
      filme["image"];
    }

    return r;
  }

  List<String> listUrl(List<ModelFilme> a) {
    List<String> listUrl = [];
    for (ModelFilme url in a) {
      listUrl.add(url.imageFilme);
    }
    return listUrl;
  }

  bool isLoading = true;

  @override
  void initState() {
    bi = _carregaFilme(a);
    urlImages = listUrl(bi);
    WidgetsBinding.instance!.addPostFrameCallback((_) => dadoUrl());
    super.initState();
  }

  Future dadoUrl() async {
    setState(() => isLoading = true);

    await Future.wait(
        urlImages.map((urlImage) => cacheImage(context, urlImage)).toList());

    setState(() => isLoading = false);
  }

  Future cacheImage(BuildContext context, String urlImage) => precacheImage(
        CachedNetworkImageProvider(urlImage),
        context,
      );

  @override
  Widget build(BuildContext context) {
    List<ModelFilme> bi = _carregaFilme(a);

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: MinhaAppBar(
        text: "Ver Mais",
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.height * 0.02,
        ),
        child: GridView.builder(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.02,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            final urlImage = urlImages[index];
            return FilmeVerMais(
                image: bi[index].imageFilme,
                nome: bi[index].nomeFilme,
                size: size);

            /*Filme1(
              image: bi[index].imageFilme,
              nome: bi[index].nomeFilme,
              size: size,
            );
         */
          },
          //
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: size.width * 0.7, //horizontal
            mainAxisExtent: size.height * 0.45, //vertical
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: size.height * 0.02,
          ),
        ),
      ),
    );
  }
}

/*

GridView.builder(
        //scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Filme1(
            image: "lib/assets/images/image.jpg",
            nome: bi[index].nomeFilme,
            size: size,
          );
        },
        //
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: size.width * 0.7, //horizontal
          mainAxisExtent: size.width * 0.78, //vertical
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          //mainAxisSpacing: size.height * 0.015,
        ),
      ),
),



 Filme1(
              size: size,
              image: bi[index].imageFilme,
              nome: bi[index].nomeFilme,
            );


Container(
              height: 10,
              width: 10,
              color: Colors.black,
              child: Text(
                bi[index].nomeFilme,
                style: TextStyle(color: Colors.white),
              ),
            );

Widget a = ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(8),
          child: const Text("He'd have you all unravel at the"),
          color: Colors.green[100],
          height: 100,
          width: 100,
        );
      },
    );
*/

List<Map<String, String>> banco = [
  {
    "id": "tt15386750",
    "title": "Broken Canes",
    "year": "(2022)",
    "image":
        "https://imdb-api.com/images/original/MV5BNTE4YWE4NmEtYWY0ZS00ZDU4LTkxY2EtNTk2MDY1MDk5MTgyXkEyXkFqcGdeQXVyOTkwMTQ5MTI@._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt14954126",
    "title": "Jaan! Jaan Loge Kya?",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BNGU0ZDRlMTgtYmU0Zi00NGI4LTllZTItMGUyMDJlNGM2OWY5XkEyXkFqcGdeQXVyMjUyNDQ0NDE@._V1_Ratio1.7600_AL_.jpg",
    "imDbRating": "4.2"
  },
  {
    "id": "tt14561924",
    "title": "Ourselves",
    "year": "",
    "image":
        "https://imdb-api.com/images/original/MV5BNDQwOWEyODItYzUwMi00YmFlLWIwOGEtYTQ2NDc5NzAyMzg1XkEyXkFqcGdeQXVyMTAyMzgyNDQy._V1_Ratio1.6000_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt14839986",
    "title": "Is This Thing On?",
    "year": "(2020)",
    "image":
        "https://imdb-api.com/images/original/MV5BYjdiZWY5MjAtODc2MC00OTM3LTkzNjctNWI1YmViYmRmMjQ2XkEyXkFqcGdeQXVyMjE4NzUwNzA@._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt9109076",
    "title": "The Witching Hour",
    "year": "(2018– )",
    "image":
        "https://imdb-api.com/images/original/MV5BNjBiYTQwNWEtM2E1MS00ZDBlLTk3ZjItNTRlYjE5NGY0YzFjXkEyXkFqcGdeQXVyNzkwMDc4MDM@._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "7.8"
  },
  {
    "id": "tt14399638",
    "title": "Cry Later",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BNGE0ZjI1ODgtYjNmZi00Yzk0LThlYmQtNDc5Y2NiODZiODg1XkEyXkFqcGdeQXVyMTI1MjEwNTk4._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt15351880",
    "title": "Clandestine Tea",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BYWY2NzUxZWUtY2Q2OC00YTRiLWI5YjgtNGJkYTk0YzZjNDk4XkEyXkFqcGdeQXVyMTM1OTQ0Njcz._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt14790464",
    "title": "Heartstrings",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BNmY4M2JmOTQtNDA5ZC00YWE4LTk5YTYtNjExM2ZiM2I2YWVlXkEyXkFqcGdeQXVyMTA4Njc0MjYy._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt14826444",
    "title": "Highly Unlikely",
    "year": "(2021 TV Movie)",
    "image":
        "https://imdb-api.com/images/original/MV5BZGY3NDBjYWEtZmIxZS00YmQ5LWE4ZjYtMTdlYzkxNzFhMGUyXkEyXkFqcGdeQXVyMTA5NTIzNzI4._V1_Ratio1.7600_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt15122456",
    "title": "The Fourth Party",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BN2I5NTBmN2EtYmM0ZC00YWE3LWFlYzctYTA1NmJiNDI1NmRiXkEyXkFqcGdeQXVyMTA0MDA4NzM@._V1_Ratio0.7600_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt15280968",
    "title": "Unlike Friends",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BZTNhOWEwMTYtM2RiMi00ZTQ1LTkzZjQtZTZlYjgwMjdmZTlmXkEyXkFqcGdeQXVyMjEzMzU2MDI@._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "0"
  },
];
*/
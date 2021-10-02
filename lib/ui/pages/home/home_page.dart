import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart';

import '../../../model/model_filme.dart';
import '../../../shared/api_url.dart';
import '../page.dart';
import '../ver_mais/ver_mais.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HttpAdapter controller = HttpAdapter(client: Client());
  List<ModelFilme> listaLacamento = [];
  List<ModelFilme> listaParaVc = [];
  List<ModelFilme> listaTerror = [];
  List<ModelFilme> listaAnime = [];

  /*
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }*/
  // ModelFilme
  List<ModelFilme> retornaFilme(dynamic response) {
    response = response['items'];
    List<ModelFilme> temp = [];
    int contador = 0;
    for (Map<String, dynamic> map in response) {
      if (contador < 10) {
        temp.add(ModelFilme.fromMap(map));
        contador++;
      } else {}
    }
    return temp;
  }

  Future carregaDados() async {
    //epic
    final responseTerror = await controller.request(
        url: UrlApi.getApiPathByCategory("ghost-story"), method: "get");
    final responseParaVc = await controller.request(
        url: UrlApi.getApiPathByCategory("epic"), method: "get");
    final responseAnime = await controller.request(
        url: UrlApi.getApiPathByCategory("anime"), method: "get");
    final responseLacamento =
        await controller.request(url: UrlApi.filmeLancamento, method: "get");
    //print("response1 $response");
    // response[""]
    //List<ModelFilme> people = response .map((f) => ModelFilme.fromJson(f as Map<String, dynamic>)) .toList();
    //var listaAnime = ModelFilme.fromMap(Map<String, dynamic>.from(response));
    //Lista de maps;;

    //print("$listaAnime");
    //  List<ModelFilme> listaAnime1 = listaAnime.map((f) => ModelFilme.fromMap(f));
    //var a1 = ModelFilme.fromMap(listaAnime[1]);
    //  print(listaAnime1[1].idFilme);

    //print(ListaAnime1[0].idFilme);
    setState(() {
      listaLacamento = retornaFilme(responseLacamento);
      listaParaVc = retornaFilme(responseParaVc);
      listaTerror = retornaFilme(responseTerror);
      listaAnime = retornaFilme(responseAnime);
    });
    // debugPrint(listaAnime1[1].idFilme);
    //  return listaAnime;
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
      //extendBodyBehindAppBar: true,
      appBar: MinhaAppBar(text: "NerdFlix"),
      body: CustomScrollView(
        slivers: [
          //Filme em destaque
          SliverPadding(
            padding: EdgeInsets.only(top: size.height * 0.04),
            sliver: SliverToBoxAdapter(
              child: FilmeDestaque(
                titulo: listaLacamento[2].nomeFilme,
                nomeAtor: "Thanet Natisri - Jim Warny - Mikko Paasi",
                url: listaLacamento[2].imageFilme,
                text: Text(
                  "Lançamento",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                size: size,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetalhePage(
                                id: listaLacamento[2].idFilme,
                              )));
                },
              ),
            ),
          ),
          //
          // Para você
          SliverPadding(
            padding: EdgeInsets.only(
                top: size.height * 0.025, left: size.width * 0.04, right: 0.04),
            sliver: SliverToBoxAdapter(
              child: RowGenero(
                text: "Para Você",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerMaisPage(
                                listFilme: listaParaVc,
                                textTema: "Para voce",
                              )));
                },
              ),
            ),
          ),
          //lista de filmes na horizontal
          SliverPadding(
            padding: EdgeInsets.only(
              top: size.height * 0.001,
            ),
            sliver: SliverToBoxAdapter(
              child: ListaFilmeHorizontal(
                size: size,
                listModelFilme: listaParaVc,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: size.width * 0.04, right: 4),
            sliver: SliverToBoxAdapter(
              child: RowGenero(
                text: "Anime",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerMaisPage(
                                listFilme: listaAnime,
                                textTema: "Anime",
                              )));
                },
              ),
            ),
          ),
          //lista de filmes na horizontal
          SliverPadding(
            padding: EdgeInsets.only(
              top: size.height * 0.001,
            ),
            sliver: SliverToBoxAdapter(
              child: ListaFilmeHorizontal(
                size: size,
                listModelFilme: listaAnime,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: size.width * 0.04, right: 4),
            sliver: SliverToBoxAdapter(
              child: RowGenero(
                text: "Terror",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerMaisPage(
                                listFilme: listaTerror,
                                textTema: "Terror",
                              )));
                },
              ),
            ),
          ),
          //lista de filmes na horizontal
          SliverPadding(
            padding: EdgeInsets.only(
              top: size.height * 0.001,
            ),
            sliver: SliverToBoxAdapter(
              child: ListaFilmeHorizontal(
                size: size,
                listModelFilme: listaTerror,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

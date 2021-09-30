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
    super.initState();
    bi = _carregaFilme(a);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: MinhaAppBar(
          text: "Ver Mais",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.height * 0.02),
            child: SingleChildScrollView(
              primary: true,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.02),
                    child: Row(children: [
                      Text(
                        widget.textTema,
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                      ),
                    ]),
                  ),
                  GridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.02,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return FilmeVerMais(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetalhePage()));
                          },
                          image: bi[index].imageFilme,
                          nome: bi[index].nomeFilme,
                          size: size);
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
                ],
              ),
            ),
          ),
        ));
  }
}

/*
GridView.builder(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.02,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
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

*/


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
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
              child: FilmeDestaque(size: size),
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
                onPressed: () {},
              ),
            ),
          ),
          //lista de filmes na horizontal
          SliverPadding(
            padding: EdgeInsets.only(
              top: size.height * 0.001,
            ),
            sliver: SliverToBoxAdapter(
              child: ListFilmeHorizontal(size: size),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: size.width * 0.04, right: 4),
            sliver: SliverToBoxAdapter(
              child: RowGenero(
                text: "Ação",
                onPressed: () {},
              ),
            ),
          ),
          //lista de filmes na horizontal
          SliverPadding(
            padding: EdgeInsets.only(
              top: size.height * 0.001,
            ),
            sliver: SliverToBoxAdapter(
              child: ListFilmeHorizontal(size: size),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: size.width * 0.04, right: 4),
            sliver: SliverToBoxAdapter(
              child: RowGenero(
                text: "Para Você",
                onPressed: () {},
              ),
            ),
          ),
          //lista de filmes na horizontal
          SliverPadding(
            padding: EdgeInsets.only(
              top: size.height * 0.001,
            ),
            sliver: SliverToBoxAdapter(
              child: ListFilmeHorizontal(size: size),
            ),
          ),
        ],
      ),
    );
  }
}


 
/*

SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Para você",
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              )),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Ver mais",
                          style: Theme.of(context).textTheme.button?.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ),
                    ],
                  ),
                  //list
                  // Expanded(child: ListaHorizontal())
                ],
              ),
            )

ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(height: 50, color: Colors.red);
                              },
                              separatorBuilder: (context, index) => Container(
                                    width: 10,
                                  ),
                              itemCount: 1)
                              
                              
                              
                              
 SafeArea(
        child: Container(
          color: Theme.of(context).colorScheme.background,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.04),
                child: Column(
                  children: [
                    //filme lançameto
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Lançamento",
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.02),
                            child: Container(
                              color: Colors.red,
                              height: size.height * 0.6,
                              width: size.width * 0.7,
                              child: FittedBox(
                                  child: Image.asset(
                                      "lib/assets/images/image.jpg"),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Text(
                            "Tema do filme",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: size.height * 0.02,
                                bottom: size.height * 0.01),
                            child: Text(
                              "Ator 1 - Ator 2 - Ator 3",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onBackground),
                            ),
                          ),
                        ]),
                    //
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.04),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Para você",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                      )),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Ver mais",
                                  style: Theme.of(context)
                                      .textTheme
                                      .button
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          //list
                          //ListaHorizontal()
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.04),
                      child: Row(
                        children: const [
                          C(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.04),
                      child: Row(
                        children: const [
                          C(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //  ListaHorizontal(),
            ],
          ),
        ),
      ),                             
                              
                              */

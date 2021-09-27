import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../page.dart';
import '../ver_mais/ver_mais.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }*/

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
                text: Text(
                  "Lançamento",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                size: size,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetalhePage()));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VerMaisPage()));
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
              child: ListFilmeHorizontal(size: size),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: size.width * 0.04, right: 4),
            sliver: SliverToBoxAdapter(
              child: RowGenero(
                text: "Ação",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VerMaisPage()));
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
              child: ListFilmeHorizontal(size: size),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: size.width * 0.04, right: 4),
            sliver: SliverToBoxAdapter(
              child: RowGenero(
                text: "Drama",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VerMaisPage()));
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
              child: ListFilmeHorizontal(size: size),
            ),
          ),
        ],
      ),
    );
  }
}

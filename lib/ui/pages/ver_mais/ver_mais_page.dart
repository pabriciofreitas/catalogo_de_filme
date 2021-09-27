import 'package:flutter/material.dart';

import '../../../model/model_filme.dart';
import '../page.dart';

class VerMaisPage extends StatelessWidget {
  const VerMaisPage({Key? key}) : super(key: key);

  List<ModelFilme> _carregaFilme(response) {
    List<ModelFilme> r = [];
    for (Map<String, dynamic> filme in response) {
      r.add(ModelFilme.fromMap(filme));
    }

    return r;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> a = banco;

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
            return Filme1(
              image: "lib/assets/images/image.jpg",
              nome: bi[index].nomeFilme,
              size: size,
            );
          },
          //
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: size.width * 0.7, //horizontal
            mainAxisExtent: size.width * 0.745, //vertical
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
  {
    "id": "tt14911056",
    "title": "Jackson",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BNzg5YjlhOWUtNmQzZi00OTJmLWE5YTgtOTlmM2U0MjE0NWM3XkEyXkFqcGdeQXVyNDYyNjA1NTQ@._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt14823222",
    "title": "Memoria",
    "year": "(III) (2021)",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt14680208",
    "title": "Alice",
    "year": "(IV) (2021)",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14708484",
    "title": "Sampai Jadi Debu",
    "year": "(2021 TV Movie)",
    "image":
        "https://imdb-api.com/images/original/MV5BNWFlMDk1NTYtYzU1NS00NmI5LWI1OGEtNDc0OGQwNmI2ZWZiXkEyXkFqcGdeQXVyMTIxMTI2NzM5._V1_Ratio0.7600_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14056006",
    "title": "The Falcon and the Winter Soldier Stop Motion",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BYjU5NjYwZDItOTRjNy00ZTM0LWEwYzYtMGY3MzE2YzVhODExXkEyXkFqcGdeQXVyMTI1MDg1NjU3._V1_Ratio2.1600_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14641336",
    "title": "Selección Natural 2 Génesis",
    "year": "(2021– )",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt15153810",
    "title": "Sir Harry",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BM2I3N2EwYTMtZTc0YS00MThiLWIxMjQtMmM2MzY5NDU5ZTc4XkEyXkFqcGdeQXVyMTM1MDM5OTU2._V1_Ratio0.7600_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt15238686",
    "title": "Rumble",
    "year": "(2022– )",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt14549706",
    "title": "A Daugther's Cake",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BZmI4YzJiMTktZjA5NS00OWM0LThhM2EtNzIzYTlhNjY5YmY5XkEyXkFqcGdeQXVyMTMxODg2NzYx._V1_Ratio0.7600_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt15336620",
    "title": "The ROOM",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BZWFiZWRlNTUtZDA3NC00N2U0LWFiY2EtNGRhNTI3OTJmODJiXkEyXkFqcGdeQXVyNzY5NTQzOTg@._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt14795986",
    "title": "Boxes & Blankets",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BMzdmZGQ5ZTktNDVmNy00MmM1LTk1YmQtMWNkODlmMTM0MDYzXkEyXkFqcGdeQXVyMTMxNzk3MTQz._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14412980",
    "title": "Believe",
    "year": "(I) (2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BYTdhOGZkMGMtZDNmYS00NjFiLWExNmItMDgyZWIzNThiOTRkXkEyXkFqcGdeQXVyMTMwNDAwOTgy._V1_Ratio1.4800_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14500080",
    "title": "Can't Go Home Again",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BMzg2ZWIwMWItYWQyNy00MzQ1LWJlMzItNTRlODY1YWU2ZTJiXkEyXkFqcGdeQXVyODc3NDM1OQ@@._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14425392",
    "title": "Ascent",
    "year": "(2021)",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14807344",
    "title": "Goldfish, Noodles etc.",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BODI3MWI4NWEtMjNhNi00YzdhLWJhOTQtNTllYjliOTQ5NGNmXkEyXkFqcGdeQXVyMTMwMTg5OTQ0._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt14888320",
    "title": "Unseen: The Silent Game",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BODZjNTIwOGYtZmRlZS00MzJkLWI2ZWYtZTdhMjMzZGY3N2JlXkEyXkFqcGdeQXVyMTI3NzUyNTI5._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14561376",
    "title": "What It's Good For",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BMDFkZDQxZTAtZTM2NC00OWZmLWE4MmQtZjRiODAzMzBlYjZmXkEyXkFqcGdeQXVyMTMxMTMxMTMy._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14727850",
    "title": "Swan Lane",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BN2EwMTY3NmQtNjZjYi00ZDliLWI4MTMtMzgxZWQzOGZlM2JiXkEyXkFqcGdeQXVyMzIyOTc3MzU@._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14698998",
    "title": "Otaku",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BMWJmN2E3NzktNDhmYi00MTBjLThhNzgtMjBlMTZmODdmN2YzXkEyXkFqcGdeQXVyMzg0NTIxMDA@._V1_Ratio0.7600_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14510634",
    "title": "Planet Rosie",
    "year": "(II) (2020)",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14477794",
    "title": "Good Will Memory",
    "year": "(2020)",
    "image":
        "https://imdb-api.com/images/original/MV5BMjA4ZWQ5M2EtYjNkYi00MjQwLWEzNDQtNmQ2ZGRkOTk5OTAxXkEyXkFqcGdeQXVyNDI2NDM2Nw@@._V1_Ratio0.7200_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14559792",
    "title": "Gwiazdy",
    "year": "(2019)",
    "image":
        "https://imdb-api.com/images/original/MV5BOTQzMDlhYmUtY2QxZC00MDBiLWJhOGItMGJmZmNlN2UwMzM4XkEyXkFqcGdeQXVyOTA0Njc5Njc@._V1_Ratio1.6000_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt15128386",
    "title": "Suspense (Persian: Taleegh)",
    "year": "(2020)",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt15258380",
    "title": "Zahra",
    "year": "(2020)",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt11971100",
    "title": "Prashnaa",
    "year": "(2020)",
    "image":
        "https://imdb-api.com/images/original/MV5BMTg1MmRkOTMtNGFjMS00NzFiLThlYjktZDQxYWM1OGM5YzQwXkEyXkFqcGdeQXVyMjc0NzM0MTI@._V1_Ratio0.7200_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14807878",
    "title": "Salita",
    "year": "(2018)",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt14752046",
    "title": "Shades of Stillness",
    "year": "",
    "image":
        "https://imdb-api.com/images/original/MV5BZDU1MzM5YmQtNGJmMS00MTEzLTkxY2ItMTIwODdkZTg1NDE1XkEyXkFqcGdeQXVyNTYyODkwMDQ@._V1_Ratio1.7600_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt14820732",
    "title": "Dance Like a Gypsy",
    "year": "(2019)",
    "image":
        "https://imdb-api.com/images/original/MV5BNDgxYjg3MjEtMWRmNC00NmEwLWIxYjAtOTU1ZDc3YmMyMjg5XkEyXkFqcGdeQXVyNDM0MDgxNzE@._V1_Ratio0.6800_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt15028868",
    "title": "Chumma, Nepal",
    "year": "",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt15203044",
    "title": "Aurora Skies 2022",
    "year": "",
    "image":
        "https://imdb-api.com/images/original/MV5BMDFjYzIzMDktZTE3OC00OTI4LTk2YWItNDljNDA4N2U0YzQwXkEyXkFqcGdeQXVyNTk4ODc5Mg@@._V1_Ratio0.7200_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt15251558",
    "title": "Personal",
    "year": "(2021)",
    "image":
        "https://imdb-api.com/images/original/MV5BMDFlMWFiZmItYTQ2NC00Mjg4LTg2ZGMtMWIwZTJmZWMzZTEzXkEyXkFqcGdeQXVyMTI5NTY1MDEy._V1_Ratio0.7200_AL_.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt15071722",
    "title":
        "Obsessive Compulsive Disorder - (Visual Representation of my OCD)",
    "year": "(2020)",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt15478448",
    "title": "Alice in the Mirror",
    "year": "(2021)",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt15485442",
    "title": "Delusions End: Breaking Free of the Matrix",
    "year": "(2021 Video)",
    "image":
        "https://imdb-api.com/images/original/MV5BNDlkMGJmMGQtNGI3OC00OWM4LWE4OWYtOTY4ZGY5ZDNlNGNlXkEyXkFqcGdeQXVyMTc0ODg5NTQ@._V1_Ratio0.7600_AL_.jpg",
    "imDbRating": "-"
  },
  {
    "id": "tt6927376",
    "title": "Being Eileen",
    "year": "(2011– )",
    "image": "https://imdb-api.com/images/original/nopicture.jpg",
    "imDbRating": "0"
  },
  {
    "id": "tt11530008",
    "title": "Encerrados",
    "year": "(2018– )",
    "image":
        "https://imdb-api.com/images/original/MV5BM2Q4Nzk1YTctMzIzOS00MDEzLTlmMTItMWI4ZWYyMmQ2ODc4XkEyXkFqcGdeQXVyNTcyNTAzMzQ@._V1_Ratio1.7600_AL_.jpg",
    "imDbRating": "6.8"
  },
];

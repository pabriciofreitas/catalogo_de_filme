class UrlApi {
  static const chave = "k_c7j572lj";
  static const filmeLancamento =
      "https://imdb-api.com/br/API/ComingSoon/$chave"; //funcionando
  static String getApiPathByCategory(String categoria) =>
      "https://imdb-api.com/br/API/Keyword/$chave/$categoria"; //dramas //https://imdb-api.com/br/API/Keyword/k_wgr1o4iu/dramas  //ghost-story
  static String getApiPathByFilmId(String id) =>
      "https://imdb-api.com/pt/API/Title/$chave/$id"; //funcionou
}

//Map<String, dynamic> a = {"id":"tt15280968","title":"Unlikely Friends","originalTitle":"","fullTitle":"Unlikely Friends (2021)","type":"Movie","year":"2021","image":"https://imdb-api.com/images/original/MV5BZTNhOWEwMTYtM2RiMi00ZTQ1LTkzZjQtZTZlYjgwMjdmZTlmXkEyXkFqcGdeQXVyMjEzMzU2MDI@._V1_Ratio0.6762_AL_.jpg","releaseDate":"2021-08-22","runtimeMins":"11","runtimeStr":"11min","plot":null,"plotLocal":"","plotLocalIsRtl":false,"awards":"","directors":"Walter Jakubowski","directorList":[{"id":"nm4523018","name":"Walter Jakubowski"}],"writers":"Walter Jakubowski","writerList":[{"id":"nm4523018","name":"Walter Jakubowski"}],"stars":"Amy Harber, John McDonnell","starList":[{"id":"nm1566485","name":"Amy Harber"},{"id":"nm4905026","name":"John McDonnell"}],"actorList":[{"id":"nm1566485","image":"https://imdb-api.com/images/original/nopicture.jpg","name":"Amy Harber","asCharacter":"Michelleas Michelle"},{"id":"nm4905026","image":"https://imdb-api.com/images/original/MV5BOGM2YzlmNzItZTkzYS00YTAwLTk4MzItYzA2YzY5MWI5MWYxXkEyXkFqcGdeQXVyNTQxNjc5NTc@._V1_Ratio1.0000_AL_.jpg","name":"John McDonnell","asCharacter":"Johnas John"}],"fullCast":null,"genres":"Short, Drama","genreList":[{"key":"Short","value":"Short"},{"key":"Drama","value":"Drama"}],"companies":"Jake Entertainment","companyList":[{"id":"co0876403","name":"Jake Entertainment"}],"countries":"EUA","countryList":[{"key":"USA","value":"EUA"}],"languages":"Inglês","languageList":[{"key":"English","value":"Inglês"}],"contentRating":null,"imDbRating":null,"imDbRatingVotes":null,"metacriticRating":null,"ratings":null,"wikipedia":null,"posters":null,"images":null,"trailer":null,"boxOffice":{"budget":"$100 (estimated)","openingWeekendUSA":"","grossUSA":"","cumulativeWorldwideGross":""},"tagline":"When a homeless man meets a woman. A woman who is reluctantly to talk to him, become friends.","keywords":"dramas","keywordList":["dramas"],"similars":[],"tvSeriesInfo":null,"tvEpisodeInfo":null,"errorMessage":null,};


/*



grind viu . caunt        child: GridView.count(
         //       addAutomaticKeepAlives: false,
          //      addRepaintBoundaries: false,
            //    childAspectRatio: 110 / 160,
Expanded(
              child: GridView.count(
                addAutomaticKeepAlives: false,
                addRepaintBoundaries: false,
                childAspectRatio: 110 / 160,
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 20,
                children: arguments.items!
                    .map((item) => TitleCover(
                        id: item.id, title: item.title, image: item.image))
                    .toList(),
              ),
 
  class _TitleCoverState extends State<TitleCover>
    with AutomaticKeepAliveClientMixin

  
            ),
*/
class UrlApi {
  static const key = "k_wgr1o4iu";
  static const filmeLancamento =
      "https://imdb-api.com/br/API/ComingSoon/$key"; //funcionando
  static String getApiPathByCategory(String category) =>
      "https://imdb-api.com/br/API/Keyword/$key/$category"; //dramas //https://imdb-api.com/br/API/Keyword/k_wgr1o4iu/dramas  //ghost-story
  static String getApiPathByFilmId(String id) =>
      "https://imdb-api.com/pt/API/Title/$key/$id"; //funcionou
}

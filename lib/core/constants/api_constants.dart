const String apiKey = '0470e19c0827251614ade37613fba85b';
const String baseUrl = 'https://api.themoviedb.org/3';
const String imageBaseUrl = 'https://image.tmdb.org/t/p/w500';


class ApiEndPoints {
  static const downloads = "$baseUrl/movie/popular?api_key=$apiKey";
  static const searchUrl = "$baseUrl/search/movie?api_key=$apiKey";
  static const topRated = "$baseUrl/movie/top_rated?api_key=$apiKey";
  static const nowPlaying = "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const upcoming = "$baseUrl/movie/upcoming?api_key=$apiKey";


}

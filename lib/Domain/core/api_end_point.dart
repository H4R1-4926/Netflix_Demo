import 'package:newtflix_dupli/Infrastructure/api_key.dart';
import 'package:newtflix_dupli/core/Strings.dart';

class Apiendpoints {
  static const downloadapi =
      "$kbaseurl/trending/all/day?language=en-US&api_key=$apiKey";
  static const serachresultapi = "$kbaseurl/search/movie?api_key=$apiKey";
  static const everyonewatching =
      "$kbaseurl/movie/popular?language=en-US&api_key=$apiKey";
  static const comingsoon =
      "$kbaseurl/movie/upcoming?language=en-US&api_key=$apiKey";
  static const postapathTvShow =
      "$kbaseurl/tv/top_rated?language=en-US&page=1&api_key=$apiKey";
  static const postapathMovies =
      "$kbaseurl/movie/now_playing?language=en-US&page=1&api_key=$apiKey";
}



import 'dart:convert';
import 'dart:developer';

import '../common/utils.dart';

import 'package:http/http.dart'as http;

import '../modals/UpcomingModels.dart';

const baseUrl="https://api.themoviedb.org/3/";
var Key="?api_key=$apiKey";
late String EndPoint;

class ApiServises{
  Future<UpcomingMovieModel> getUpcomingMovies() async
  {
    EndPoint="movie/upcoming";
    //{https://api.themoviedb.org/3/movie/upcoming?api_key=81ab5df798814d1aa1ff18885b35f80c}
    final url="$baseUrl$EndPoint$Key";

    final response= await http.get(Uri.parse(url));

    if(response.statusCode==200)
      {
       log("Sucess");
       return UpcomingMovieModel.fromJson(jsonDecode(response.body));
      }
    throw Exception("Failed to load upcoming movie");



  }

}
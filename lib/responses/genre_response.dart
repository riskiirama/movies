import 'package:movies/models/genre.dart';

class GenreResponse {
  List<Genre> genres = [];

  GenreResponse.fromJson(Map<String, dynamic> json) {
    json['data'].forEach((genre) => genres.add(Genre.fromJson(genre)));
  }
}

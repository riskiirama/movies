import 'package:movies/models/genre.dart';

class Movie {
  late int id;
  late String title;
  late String description;
  late String poster;
  late String banner;
  late String type;
  late String releaseData;
  late double vote;
  late int voteCount;

  List<Genre> genres = [];

  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    poster = json['poster'];
    banner = json['banner'];
    type = json['type'];
    releaseData = json['release_data'];
    vote = double.parse(json['vote']);
    voteCount = json['vote_count'];

    json['genres'].forEach((genre) => genres.add(Genre.fromJson(genre)));
  }
}

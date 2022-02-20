import 'package:get/get.dart';
import 'package:movies/models/genre.dart';
import 'package:movies/responses/genre_response.dart';
import 'package:movies/services/api.dart';

class GenreController extends GetxController {
  var genres = <Genre>[].obs;
  Future<void> getGenres() async {
    var response = await Api.getGenres();

    var genreResponse = GenreResponse.fromJson(response.data);
    genres.clear();
    genres.addAll(genreResponse.genres);
  }
}

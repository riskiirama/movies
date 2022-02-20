import 'package:get/get.dart';
import 'package:movies/models/movie.dart';

class HomeController extends GetxController {
  var isLoadingNowPlaying = true.obs;
  var isLoadingUpcoming = true.obs;
  var isLoadingTrending = true.obs;

  var nowPlayingMovies = <Movie>[];
  var trendingMovies = <Movie>[];
  var upcomingMovies = <Movie>[];

  // @override
  // void initState() {
  //   getNowPlayingMovies();
  //   super.onInit();
  // }

  Future<void> getNowPlayingMovies() async {
    isLoadingNowPlaying.value = true;

    nowPlayingMovies.clear();

    // var response = await Api.getMovies('now_playing');
    // var movieResponse = MovieResponse.fromJson(response.data);

    // nowPlayingMovies.addAll(movieResponse.movies);
    // isLoadingNowPlaying.value = false;
  }
}

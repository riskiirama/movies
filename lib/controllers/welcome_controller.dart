import 'package:get/get.dart';
import 'package:movies/screens/genres_screen.dart';
import 'package:movies/screens/home_screen.dart';
import 'package:movies/screens/search_screen.dart';
import 'package:movies/screens/settings_screen.dart';

class WelcomeController extends GetxController {
  var currentIndex = 0.obs;

  var screens = [
    HomeScreen(),
    GenresScreen(),
    SearchScreen(),
    SettingsScreen(),
  ];
}

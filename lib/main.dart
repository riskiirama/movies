import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:movies/screens/welcome_screen.dart';
import 'package:movies/services/api.dart';

void main() async {
  await GetStorage.init();
  Api.initializeInterceptors();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light,
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          // iconTheme: IconThemeData(
          //   color: Colors.black,
          // ),
          // color: Colors.blue,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.amber,
          secondary: Colors.amber,
        ),
      ),
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.grey[700],
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarIconBrightness: Brightness.light,
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          // iconTheme: IconThemeData(
          //   color: Colors.black,
          // ),
          // color: Colors.blue,
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.amber,
          secondary: Colors.amber,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.dark,
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      defaultTransition: Transition.fade,
      transitionDuration: Duration(
        milliseconds: 100,
      ),
      home: WelcomeScreen(),
    );
  }
}

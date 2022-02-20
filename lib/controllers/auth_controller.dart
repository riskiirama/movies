import 'package:get/get.dart';
import 'package:movies/screens/welcome_screen.dart';

class AuthController extends GetxController {
  var isLoggedIn = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> redirect() async {
    // var token = await GetStorage().read('login_token');

    // if (token != null) {
    //   isLoggedIn.value = true;
    // }

    Get.off(WelcomeScreen());
    // Future.delayed(Duration(seconds: 5))
    //     .then((value) => {
    //           Get.to(
    //             () => WelcomeScreen(),
    //             preventDuplicates: false,
    //           ),
    //         })
    //     .catchError((error) {
    //   print('${error.toString()}');
    // });
  }
}

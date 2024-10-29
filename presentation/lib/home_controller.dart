import 'package:di/di.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Di di = Di();

  @override
  void onInit() {
    super.onInit();
    di.init();
  }

  void getUsers() {
    di.getUsersUseCase.call().then((response) {
      print('users: $response');
    });
  }
}

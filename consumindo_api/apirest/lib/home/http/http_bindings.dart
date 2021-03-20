import 'package:apirest/home/http/http_controller.dart';
import 'package:apirest/home/http/repository/user_http_repository.dart';
import 'package:apirest/repository/i_user_repository.dart';
import 'package:get/get.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}

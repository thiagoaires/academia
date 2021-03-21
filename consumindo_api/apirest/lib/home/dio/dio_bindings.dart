import 'package:apirest/home/dio/dio_controller.dart';
import 'package:apirest/home/dio/repository/user_repository_dio.dart';
import 'package:apirest/repository/i_user_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DioBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio());
    Get.lazyPut<IUserRepository>(() => UserRepositoryDio(Dio()));
    Get.put(DioController(Get.find()));
  }
}

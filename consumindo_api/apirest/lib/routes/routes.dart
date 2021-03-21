import 'package:apirest/home/dio/dio_bindings.dart';
import 'package:apirest/home/dio/dio_page.dart';
import 'package:apirest/home/home_page.dart';
import 'package:apirest/home/http/http_bindings.dart';
import 'package:apirest/home/http/http_page.dart';
import 'package:get/get.dart';

final List routes = [
  GetPage(
    name: '/',
    page: () => HomePage(),
    children: [
      GetPage(
        name: '/http',
        page: () => HttpPage(),
        binding: HttpBindings(),
      ),
      GetPage(
        name: '/dio',
        page: () => DioPage(),
        binding: DioBindings(),
      )
    ],
  ),
];

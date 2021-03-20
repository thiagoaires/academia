import 'package:apirest/home/home_page.dart';
import 'package:apirest/home/http/http_page.dart';
import 'package:get/get.dart';

final List routes = [
  GetPage(
    name: '/',
    page: () => HomePage(),
  ),
  GetPage(
    name: '/http',
    page: () => HttpPage(),
  )
];

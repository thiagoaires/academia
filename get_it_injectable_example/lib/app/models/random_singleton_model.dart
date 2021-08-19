import 'dart:math';

import 'package:injectable/injectable.dart';

@injectable
class RandomSingletonModel {
  int id;
  String name;

  RandomSingletonModel()
      : id = Random().nextInt(1000),
        name = 'Random Singleton Model' {
    print:
    "$name: id: $id";
  }
}

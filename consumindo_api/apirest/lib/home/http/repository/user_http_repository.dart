import 'dart:convert';

import 'package:apirest/model/user_model.dart';
import 'package:apirest/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllusers() async {
    print('ok');
    final _url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users';
    final response = await http.get(_url);
    final List<dynamic> responseMap = jsonDecode(response.body);
    print(responseMap);
    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }
}

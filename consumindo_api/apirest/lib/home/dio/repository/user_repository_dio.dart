import 'package:apirest/model/user_model.dart';
import 'package:apirest/repository/i_user_repository.dart';
import 'package:dio/dio.dart';

class UserRepositoryDio implements IUserRepository {
  final Dio _dio;

  UserRepositoryDio(this._dio);

  @override
  Future<List<UserModel>> findAllUsers() async {
    final _url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users';
    try {
      final response = await _dio.get<List>(_url);
      return response.data.map((res) => UserModel.fromMap(res)).toList();
    } on DioError catch (e) {
      print(e);
      rethrow;
    }
  }
}

import 'package:apirest/model/user_model.dart';

abstract class IUserRepository {
  Future<List<UserModel>> findAllusers();
}
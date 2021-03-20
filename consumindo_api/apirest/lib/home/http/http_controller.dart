import 'package:apirest/repository/i_user_repository.dart';
import 'package:get/get.dart';

class HttpController extends GetxController with StateMixin {
  final IUserRepository _repository;

  HttpController(this._repository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  void findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _repository.findAllusers();
      change(dados, status: RxStatus.success());
    } on Exception catch (e) {
      change([], status: RxStatus.error('Erro ao buscar usuarios'));
    }
  }
}

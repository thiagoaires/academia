import 'package:apirest/repository/i_user_repository.dart';
import 'package:get/get.dart';

class DioController extends GetxController with StateMixin {
  final IUserRepository _repository;

  DioController(this._repository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _repository.findAllUsers();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error("Erro na request"));
    }
  }
}

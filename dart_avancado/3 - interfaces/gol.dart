import 'carro.dart';

class Gol implements Carro {
  @override
  String motor = '1.6';

  @override
  int portas = 4;

  @override
  int rodas = 4;

  @override
  int calculaVelocidadeMaxima() {
    return 200;
  }
}

import 'carro.dart';
import 'gol.dart';
import 'uno.dart';

void main(List<String> args) {
  Uno uno = Uno();
  Carro gol = Gol();

  print(uno.calculaVelocidadeMaxima());
  mostraVelocidadeMaxima(gol);
}

mostraVelocidadeMaxima(Carro carro) {
  print(carro.calculaVelocidadeMaxima());
}

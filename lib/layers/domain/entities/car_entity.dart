// ignore_for_file: public_member_api_docs, sort_constructors_first
class CarEntity {
  String placa;
  int qtdPortas;
  double valor;

  CarEntity({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  });

  double get valorReal {
    return valor * qtdPortas;
  }

  changeValueOfCar() {
    if (valorReal > 10000.00) {
      valor * 2;
    }
  }
}

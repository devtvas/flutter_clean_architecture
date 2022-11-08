import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test("i hope the entity is not null", () {
    CarEntity carEntity =
        CarEntity(placa: "ABC123", qtdPortas: 2, valor: 50000.00);
    expect(carEntity, isNotNull);
  });
  test("number of ports must be 2", () {
    CarEntity carEntity =
        CarEntity(placa: "ABC123", qtdPortas: 2, valor: 50000.00);
    expect(carEntity.qtdPortas, 2);
  });
  test("espero que o valor seja 50mil", () {
    CarEntity carEntity =
        CarEntity(placa: "ABC123", qtdPortas: 2, valor: 50000.00);
    expect(carEntity.valor, 50000.00);
  });
  test("Espero que valorReal seja 0", () {
    CarEntity carEntity =
        CarEntity(placa: "DEF456", qtdPortas: 0, valor: 1000.00);
    var resultado = 0.00;
    expect(carEntity.valorReal, resultado);
  });
  test("Espero que o valor seja 30mil", () {
    CarEntity carEntity =
        CarEntity(placa: "ABC123", qtdPortas: 2, valor: 15000.00);
    double resultadoEsperado = 30000.00;
    carEntity.changeValueOfCar();
    expect(carEntity.valor, resultadoEsperado);
  });
}

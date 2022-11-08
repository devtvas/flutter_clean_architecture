import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/get_car_by_color/get_car_by_color_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/get_car_by_color/i_get_car_by_color_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Deve retornar uma intancia de carro, quando passar qualquer cor', () {
    IGetCarByColorUsecase useCase = GetCarByColorUsecase();

    var resultado = useCase('Azul');

    expect(resultado, isInstanceOf<CarEntity>());
  });
  test('Deve retornar um carro de 4 portas, quando passar cor red', () {
    IGetCarByColorUsecase useCase = GetCarByColorUsecase();

    var resultado = useCase('Red');

    expect(resultado.qtdPortas, 4);
  });
  test(
      'Deve retornar um carro de 2 portas, quando passar qualquer cor, exceto red',
      () {
    IGetCarByColorUsecase useCase = GetCarByColorUsecase();

    var resultado = useCase('green');

    expect(resultado.qtdPortas, 2);
  });
}

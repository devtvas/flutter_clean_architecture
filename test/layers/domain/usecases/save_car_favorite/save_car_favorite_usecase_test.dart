import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/save_car_favorite_repository.dart';
import 'package:clean_architecture/layers/domain/usecases/save_car_favorite_usecase/i_save_car_favorite_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/save_car_favorite_usecase/save_car_favorite_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

class SaveCarFavoriteRepository implements ISaveCarFavoriteRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.valor > 0;
  }
}

main() {
  test('Espero que salve o carro som sucesso', () async {
    ISaveCarFavoriteUsecase useCase = SaveCarFavoriteUsecase(
      SaveCarFavoriteRepository(),
    );
    var car = CarEntity(placa: 'plava', qtdPortas: 2, valor: 1);

    var result = await useCase(car);

    expect(result, true);
  });
  test(
      'Espero que nao salve o carro , quando o valor for menor ou igual que zero',
      () async {
    ISaveCarFavoriteUsecase useCase = SaveCarFavoriteUsecase(
      SaveCarFavoriteRepository(),
    );
    var car = CarEntity(placa: 'plava', qtdPortas: 2, valor: 0);

    var result = await useCase(car);

    expect(result, false);
  });
}

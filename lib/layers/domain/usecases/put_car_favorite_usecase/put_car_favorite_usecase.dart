import 'package:clean_architecture/layers/domain/repositories/put_car_favorite_repository.dart';

import '../../entities/car_entity.dart';
import '../../usecases/put_car_favorite_usecase/i_put_car_favorite_usecase.dart';

class PutCarFavoriteUsecase implements IPutCarFavoriteUsecase {
  final IPutCarFavoriteRepository _iPutCarFavoriteRepository;

  PutCarFavoriteUsecase(this._iPutCarFavoriteRepository);

  @override
  Future<bool> call(CarEntity carEntity) async {
    carEntity.changeValueOfCar();
    return await _iPutCarFavoriteRepository(carEntity);
  }
}

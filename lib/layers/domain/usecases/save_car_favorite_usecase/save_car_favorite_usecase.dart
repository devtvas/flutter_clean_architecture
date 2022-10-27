import 'package:clean_architecture/layers/domain/repositories/save_car_favorite_repository.dart';
import '../../entities/car_entity.dart';
import '../../repositories/save_car_favorite_repository.dart';

class SaveCarFavoriteUsecase implements ISaveCarFavoriteRepository {
  final ISaveCarFavoriteRepository _iSaveCarFavoriteRepository;

  SaveCarFavoriteUsecase(this._iSaveCarFavoriteRepository);

  @override
  Future<bool> call(CarEntity carEntity) async {
    carEntity.changeValueOfCar();
    return await _iSaveCarFavoriteRepository(carEntity);
  }
}

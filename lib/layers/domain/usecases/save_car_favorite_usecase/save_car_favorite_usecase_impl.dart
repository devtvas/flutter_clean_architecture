import 'package:clean_architecture/layers/domain/repositories/i_save_car_favourite_repository.dart';
import '../../entities/car_entity.dart';
import '../../repositories/i_save_car_favourite_repository.dart';

class SaveCarFavoriteUsecaseImpl implements ISaveCarFavouriteRepository {
  final ISaveCarFavouriteRepository _iSaveCarFavoriteRepository;

  SaveCarFavoriteUsecaseImpl(this._iSaveCarFavoriteRepository);

  @override
  Future<bool> call(CarEntity carEntity) async {
    carEntity.changeValueOfCar();
    return await _iSaveCarFavoriteRepository(carEntity);
  }
}

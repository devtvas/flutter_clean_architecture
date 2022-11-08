import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/i_save_car_favourite_repository.dart';

class SaveCarFavouriteRepositoryImpl implements ISaveCarFavouriteRepository {
  // final IGetCarByColorDatasource _iGetCarByColorDatasource;

  // SaveCarFavouriteRepositoryImpl(this._iGetCarByColorDatasource);
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.valor > 0;
  }
}

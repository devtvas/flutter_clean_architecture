import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/usecases/save_car_favorite_usecase/i_save_car_favorite_usecase.dart';

class SaveCarFavoritoRepository implements ISaveCarFavoriteRepository {
  @override
  Future<bool> call(CarEntity carEntity) async {
    return carEntity.valor > 0;
  }
}

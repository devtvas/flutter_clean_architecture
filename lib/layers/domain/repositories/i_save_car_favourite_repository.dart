import 'package:clean_architecture/layers/domain/entities/car_entity.dart';

abstract class ISaveCarFavouriteRepository {
  Future<bool> call(CarEntity carEntity);
}

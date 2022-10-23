import 'package:clean_architecture/layers/domain/entities/car_entity.dart';

abstract class IPutCarFavoriteRepository {
  Future<bool> call(CarEntity carEntity);
}

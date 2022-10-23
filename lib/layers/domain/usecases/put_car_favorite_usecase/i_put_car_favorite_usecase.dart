import 'package:clean_architecture/layers/domain/entities/car_entity.dart';

abstract class IPutCarFavoriteUsecase {
  Future<bool> call(CarEntity carEntity);
}

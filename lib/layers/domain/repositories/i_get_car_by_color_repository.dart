import 'package:clean_architecture/layers/domain/entities/car_entity.dart';

abstract class IGetCarByColorRepository {
  CarEntity call(String color);
}

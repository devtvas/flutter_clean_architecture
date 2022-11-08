import 'package:clean_architecture/layers/data/dtos/car_dto.dart';
import 'package:clean_architecture/layers/domain/entities/car_entity.dart';

abstract class IGetCarByColorDatasource {
  CarDto call(String color);
}

import '../../entities/car_entity.dart';

abstract class IGetCarByColorUsecase {
  CarEntity call(String color);
}

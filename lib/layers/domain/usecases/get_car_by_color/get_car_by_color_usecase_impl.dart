import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/i_get_car_by_color_repository.dart';
import 'package:clean_architecture/layers/domain/repositories/i_save_car_favourite_repository.dart';
import 'package:clean_architecture/layers/domain/usecases/get_car_by_color/i_get_car_by_color_usecase.dart';

class GetCarByColorUsecaseImpl implements IGetCarByColorUsecase {
  final IGetCarByColorRepository repository;
  GetCarByColorUsecaseImpl(this.repository);
  @override
  CarEntity call(String color) {
    if (color.contains('red')) {
      return CarEntity(placa: 'ABC123', qtdPortas: 4, valor: 5000.00);
    }
    return CarEntity(placa: 'XYZ123', qtdPortas: 2, valor: 2000.00);
  }
}

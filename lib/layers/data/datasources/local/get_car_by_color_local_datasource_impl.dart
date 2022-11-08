import 'package:clean_architecture/layers/data/datasources/i_get_car_by_color_datasource.dart';
import 'package:clean_architecture/layers/data/dtos/car_dto.dart';

class GetCarByColorLocalDatasourceImpl implements IGetCarByColorDatasource {
  final jsonRed = {
    "placa": 'ABC123',
    "qtdPortas": 4,
    "valor": 5000.00,
  };
  final jsonAny = {
    "placa": 'QWE',
    "qtdPortas": 2,
    "valor": 2000.00,
  };

  @override
  CarDto call(String color) {
    if (color.contains('red')) {
      return CarDto.fromMap(jsonRed);
    }
    return CarDto.fromMap(jsonAny);
  }
}

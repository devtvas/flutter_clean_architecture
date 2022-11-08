import 'package:clean_architecture/layers/data/datasources/i_get_car_by_color_datasource.dart';
import 'package:clean_architecture/layers/data/dtos/car_dto.dart';

class GetCarByColorLocalDatasource implements IGetCarByColorDatasource {
  final jsonRed = {
    "placa": 'ABC123',
    "qtdPortas": 2,
    "valorFinal": 1000.00,
  };
  final jsonAny = {
    "placa": 'ABC123',
    "qtdPortas": 2,
    "valorFinal": 1000.00,
  };

  @override
  CarDto call(String color) {
    // TODO: implement call
    throw UnimplementedError();
  }
}

import 'package:clean_architecture/layers/data/datasources/i_get_car_by_color_datasource.dart';
import 'package:clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:clean_architecture/layers/domain/repositories/i_get_car_by_color_repository.dart';

class GetCarByColorRepositoryImpl implements IGetCarByColorRepository {
  final IGetCarByColorDatasource _iGetCarByColorDatasource;
  GetCarByColorRepositoryImpl(this._iGetCarByColorDatasource);

  @override
  CarEntity call(String color) {
    return _iGetCarByColorDatasource(color);
  }
}

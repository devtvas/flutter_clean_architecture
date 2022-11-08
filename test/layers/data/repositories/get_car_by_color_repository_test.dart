import 'package:clean_architecture/layers/data/datasources/i_get_car_by_color_datasource.dart';
import 'package:clean_architecture/layers/data/datasources/local/get_car_by_color_local_datasource_impl.dart';
import 'package:clean_architecture/layers/data/repositories/get_car_by_color_repository_impl.dart';
import 'package:clean_architecture/layers/domain/repositories/i_get_car_by_color_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  IGetCarByColorDatasource dataSource = GetCarByColorLocalDatasourceImpl();
  IGetCarByColorRepository repository = GetCarByColorRepositoryImpl(dataSource);

  test('Devolva uma carro indenpende de cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}

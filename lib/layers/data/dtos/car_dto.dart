// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_architecture/layers/domain/entities/car_entity.dart';

class CarDto extends CarEntity {
  String placa;
  int qtdPortas;
  double valor;

  CarDto({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
  }) : super(valor: valor, qtdPortas: qtdPortas, placa: placa);

  factory CarDto.fromMap(Map<String, dynamic> map) {
    return CarDto(
      placa: map['placa'],
      qtdPortas: map['qtdPortas'],
      valor: map['valor'],
    );
  }

  Map toMap() {
    return {
      'placa': this.placa,
      'qtdPortas': this.qtdPortas,
      'valorfinal': this.valor,
    };
  }
}

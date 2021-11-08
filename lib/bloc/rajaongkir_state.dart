part of 'rajaongkir_bloc.dart';

abstract class RajaongkirState extends Equatable {
  const RajaongkirState();

  @override
  List<Object> get props => [];
}

class RajaongkirInitial extends RajaongkirState {}

class RajaongkirValue extends RajaongkirState {
  final String value;
  const RajaongkirValue(this.value);

  @override
  List<Object> get props => [value];
}

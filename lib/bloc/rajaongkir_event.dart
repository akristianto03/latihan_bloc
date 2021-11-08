part of 'rajaongkir_bloc.dart';

abstract class RajaongkirEvent extends Equatable {
  const RajaongkirEvent();

  @override
  List<Object> get props => [];
}

class ChangeOngkir extends RajaongkirEvent {}
// class GetResiInfo extends RajaongkirEvent {} // kalo premium

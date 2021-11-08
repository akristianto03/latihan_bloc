part of 'colors_bloc.dart';

abstract class ColorsState extends Equatable {
  const ColorsState();

  @override
  List<Object> get props => [];
}

class ColorsInitial extends ColorsState {}

class ColorsValue extends ColorsState {
  final Color value;

  const ColorsValue(this.value);

  @override
  List<Object> get props => [value];
}

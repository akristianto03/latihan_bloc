import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'colors_event.dart';
part 'colors_state.dart';

class ColorsBloc extends Bloc<ColorsEvent, ColorsState> {
  ColorsBloc() : super(ColorsInitial());

  @override
  Stream<ColorsState> mapEventToState(
    ColorsEvent event,
  ) async* {
    if (event is ChangeColor) {
      if (state is ColorsInitial) {
        yield const ColorsValue(Colors.black);
      } else {
        if (state == const ColorsValue(Colors.black)) {
          yield const ColorsValue(Colors.red);
        } else {
          yield const ColorsValue(Colors.black);
        }
      }
    }
  }
}

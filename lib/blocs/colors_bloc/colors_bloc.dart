import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'colors_event.dart';
part 'colors_state.dart';

class ColorsBloc extends Bloc<ColorsEvent, ColorsState> {
  ColorsBloc() : super(ColorsState()) {
    on<ColorSelection>((event, emit) {
      emit(ColorsState(scaffoldColor: event.selectedColor));
    });
  }
}

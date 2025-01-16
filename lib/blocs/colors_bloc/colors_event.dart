part of 'colors_bloc.dart';

class ColorsEvent {}

class ColorSelection extends ColorsEvent {
  Color selectedColor;
  ColorSelection({required this.selectedColor});
}

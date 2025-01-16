part of 'counter_bloc.dart';

class CounterState {
  int count;
  CounterState({this.count = 0});
}

final class CounterInitial extends CounterState {}

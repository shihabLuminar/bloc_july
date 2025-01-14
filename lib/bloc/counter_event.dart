part of 'counter_bloc.dart';

class CounterEvent {}

class IncrementEvent extends CounterEvent {
  int age;
  IncrementEvent({required this.age});
}

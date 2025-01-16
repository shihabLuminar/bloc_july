part of 'todo_bloc.dart';

class TodoState {}

final class TodoInitialState extends TodoState {}

final class TodoLoadingState extends TodoState {}

final class TodoLoadedState extends TodoState {
  List<Todo> todoList;
  TodoLoadedState({required this.todoList});
}

final class TodoErrorState extends TodoState {
  String errorMessage;
  TodoErrorState({this.errorMessage = "Error"});
}

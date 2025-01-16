import 'package:bloc_july/models/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoInitialState()) {
    on<FetchTodos>((event, emit) async {
      final url = Uri.parse("https://dummyjson.com/todos");
      emit(TodoLoadingState());
      try {
        final response = await http.get(url);
        if (response.statusCode == 200) {
          TodoResModel resModel = todoResModelFromJson(response.body);
          emit(TodoLoadedState(todoList: resModel.todos ?? []));
        } else {
          print("error");
          emit(TodoErrorState());
        }
      } catch (e) {
        print(e.toString());
        emit(TodoErrorState(errorMessage: e.toString()));
      }
    });
  }
}

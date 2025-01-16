import 'package:bloc_july/blocs/colors_bloc/colors_bloc.dart';
import 'package:bloc_july/blocs/counter_bloc/counter_bloc.dart';
import 'package:bloc_july/blocs/todo_bloc/todo_bloc.dart';
import 'package:bloc_july/views/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => CounterBloc()),
      BlocProvider(create: (context) => ColorsBloc()),
      BlocProvider(create: (context) => TodoBloc()..add(FetchTodos())),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

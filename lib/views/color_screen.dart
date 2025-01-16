import 'package:bloc_july/blocs/colors_bloc/colors_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorScreen extends StatelessWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> myColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      const Color.fromARGB(255, 230, 226, 190),
      Colors.purple,
    ];
    return BlocBuilder<ColorsBloc, ColorsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: state.scaffoldColor,
          body: ListView.separated(
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      context
                          .read<ColorsBloc>()
                          .add(ColorSelection(selectedColor: myColors[index]));
                    },
                    child: Container(
                      height: 60,
                      color: myColors[index],
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemCount: myColors.length),
        );
      },
    );
  }
}

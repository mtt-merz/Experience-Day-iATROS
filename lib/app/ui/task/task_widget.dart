import 'package:experience_day_iatros/app/ui/task/task_cubit.dart';
import 'package:experience_day_iatros/app/ui/task/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskWidget extends StatefulWidget {
  const TaskWidget({Key? key}) : super(key: key);

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  late final cubit = TaskCubit();

  @override
  void dispose() {
    super.dispose();
    cubit.close();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder(
        bloc: cubit,
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          }

          state as Loaded;
          return Column(
            children: state.todayTasks.map((task) => TaskTile(task)).toList(),
          );
        },
      );
}

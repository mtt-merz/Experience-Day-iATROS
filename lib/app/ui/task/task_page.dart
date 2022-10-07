import 'package:experience_day_iatros/app/ui/task/task_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'task_cubit.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late final cubit = TaskCubit();

  @override
  void dispose() {
    super.dispose();
    cubit.close();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Tasks')),
        body: BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            if (state is Loading) {
              return const Center(child: CircularProgressIndicator());
            }

            state as Loaded;
            return ListView(
              padding: const EdgeInsets.symmetric(vertical: 12),
              children: state.tasks.map((task) => TaskTile(task)).toList(),
            );
          },
        ),
      );
}

import 'package:experience_day_iatros/app/models/task/task.dart';
import 'package:experience_day_iatros/app/repo/task_repository.dart';
import 'package:experience_day_iatros/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubmitTaskCubit extends Cubit<Task> {
  final Task _task;

  SubmitTaskCubit(this._task) : super(_task);

  void changeTime(DateTime time) => emit(_task..completedAt = time);

  Future<void> submit() => Locator.get<TaskRepository>().update(_task);
}

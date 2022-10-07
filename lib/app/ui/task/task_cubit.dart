import 'dart:async';

import 'package:experience_day_iatros/app/models/task/task.dart';
import 'package:experience_day_iatros/app/repo/task_repository.dart';
import 'package:experience_day_iatros/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class TaskCubitState {}

class Loading extends TaskCubitState {}

class Loaded extends TaskCubitState {
  final List<Task> tasks;

  Loaded(this.tasks);
}

class TaskCubit extends Cubit<TaskCubitState> {
  final _repository = Locator.get<TaskRepository>();

  TaskCubit() : super(Loading()) {
    _subscription = _repository.stream.listen((tasks) => emit(Loaded(tasks)));
  }

  late final StreamSubscription _subscription;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}

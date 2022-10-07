import 'package:experience_day_iatros/app/repo/task_repository.dart';
import 'package:experience_day_iatros/app/services/network.dart';
import 'package:get_it/get_it.dart';

class Locator {
  static T get<T extends Object>() => GetIt.instance<T>();

  static void init() {
    GetIt.instance.registerSingleton(NetworkService());
    GetIt.instance.registerSingleton(TaskRepository());
  }
}

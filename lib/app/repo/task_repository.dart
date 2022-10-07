import 'dart:async';

import 'package:experience_day_iatros/app/models/task/task.dart';
import 'package:experience_day_iatros/app/services/api.dart';

import 'repository.dart';

class TaskRepository extends Repository {
  final _key = '0878ea5f-aa9b-4d3c-aa7a-91b727e8c863';
  late List<Task> objects;

  TaskRepository() {
    load();
  }

  Future<void> load() async {
    final rawData = await API.fetchCollection(_key);
    objects = rawData.map(Task.fromJson).toList();
    logger.fine('Found ${objects.length} from $_key');

    addEvent(objects);
  }

  Future<void> reload() => load();

  @override
  void dispose() {
    super.dispose();
  }

  List<Task> getAll() => [...?value];

  Task? get(String id) => value?.singleWhere((element) => element.id == id);

  Future<void> create(Task object) async {
    addEvent(objects..add(object));
    // return persistenceService.insert(key, object);
  }

  Future<void> update(Task object) async {
    final index = objects.indexWhere((element) => element.id == object.id);
    objects[index] = object;
    addEvent(objects);

    // return persistenceService.update(key, object);
  }

  Future<void> delete(Task object) async {
    addEvent(objects..remove(object));
    // persistenceService.remove(key, object);
  }

  Future<void> deleteFromId(String id) => delete(get(id)!);
}

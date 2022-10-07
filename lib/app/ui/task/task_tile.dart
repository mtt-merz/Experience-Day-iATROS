import 'package:experience_day_iatros/app/models/task/task.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  const TaskTile(this.task, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        child: ListTile(
          title: const Text('Walking'),
          subtitle: const Text('Activity, 30 mins'),
          leading: Icon(
            Icons.task_alt,
            color: Theme.of(context).primaryColor,
            size: 30,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(const TimeOfDay(hour: 9, minute: 0).format(context)),
              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
          onTap: () => Navigator.of(context).pushNamed('task'),
        ),
      );
}

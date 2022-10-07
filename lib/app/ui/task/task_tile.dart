import 'package:experience_day_iatros/app/models/task/task.dart';
import 'package:experience_day_iatros/app/ui/task/task_overview.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  const TaskTile(this.task, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Card(
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(task.title),
          ),
          subtitle: Text(task.type.toString()),
          leading: Icon(
            Icons.task_alt,
            color: Theme.of(context).primaryColor,
            size: 30,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(TimeOfDay(
                      hour: task.dueDate.hour, minute: task.dueDate.minute)
                  .format(context)),
              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => TaskOverviewScreen(task))),
        ),
      );
}

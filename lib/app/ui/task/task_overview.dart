import 'package:experience_day_iatros/app/models/task/task.dart';
import 'package:experience_day_iatros/app/ui/task/submit_task_dialog.dart';
import 'package:flutter/material.dart';

class TaskOverviewScreen extends StatelessWidget {
  final Task task;

  const TaskOverviewScreen(this.task, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'Task overview',
          ),
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Created by doctor'),
            ),
            Card(
              child: Column(
                children: [
                  // Medicine
                  ListTile(
                    title: Text('Medicine name',
                        style: Theme.of(context).textTheme.labelMedium),
                    subtitle: Text(task.title,
                        style: Theme.of(context).textTheme.bodyLarge),
                    leading: const Icon(Icons.task_alt),
                  ),

                  // Time
                  const Divider(),
                  ListTile(
                    title: Text('Time & Quantity',
                        style: Theme.of(context).textTheme.labelMedium),
                    subtitle: Text('...',
                        style: Theme.of(context).textTheme.bodyLarge),
                    leading: const Icon(Icons.timer),
                  ),

                  // Description
                  const Divider(),
                  ListTile(
                      title: Text('Description',
                          style: Theme.of(context).textTheme.labelMedium),
                      subtitle: Text(task.description,
                          style: Theme.of(context).textTheme.bodyLarge),
                      leading: const Icon(Icons.document_scanner))
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.7 * 2),
          child: ElevatedButton(
            child: const Text('Mark it as done'),
            onPressed: () => showDialog(
                context: context, builder: (context) => SubmitTaskDialog(task)),
          ),
        ),
      );
}

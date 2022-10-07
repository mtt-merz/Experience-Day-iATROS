import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 15),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 5.3 * 2, vertical: 4.7 * 2),
              child: Text('Today\'s task',
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
            const TaskTile()
          ],
        ),
      );
}

class TaskTile extends StatelessWidget {
  const TaskTile({Key? key}) : super(key: key);

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

import 'package:experience_day_iatros/app/ui/task/task_widget.dart';
import 'package:experience_day_iatros/app/utils/size.dart';
import 'package:flutter/material.dart';

import '../task/task_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final cubit = TaskCubit();

  @override
  void dispose() {
    super.dispose();
    cubit.close();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Utils.transformSize(5.3),
                  vertical: Utils.transformSize(4.7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today\'s task',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See all'),
                  )
                ],
              ),
            ),
            const TaskWidget(),
          ],
        ),
      );
}

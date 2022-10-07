import 'package:experience_day_iatros/app/ui/task/task_overview.dart';
import 'package:experience_day_iatros/app/ui/task/task_screen.dart';
import 'package:experience_day_iatros/app/ui/theme.dart';
import 'package:experience_day_iatros/locator.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

void main() {
  Logger.root.level = Level.FINEST;

  Locator.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: customThemeData,
      routes: {
        'task': (context) => const TaskOverviewScreen(),
      },
      home: const TaskScreen(),
    );
  }
}

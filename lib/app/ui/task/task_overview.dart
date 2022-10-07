import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class TaskOverviewScreen extends StatelessWidget {
  const TaskOverviewScreen({Key? key}) : super(key: key);

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
                children: const [
                  // Medicine
                  ListTile(
                    title: Text('Medicine name'),
                    subtitle: Text('....'),
                    leading: Icon(Icons.task_alt),
                  ),

                  // Time
                  Divider(),
                  ListTile(
                    title: Text('Time & Quantity'),
                    subtitle: Text('...'),
                    leading: Icon(Icons.time_to_leave),
                  ),

                  // Description
                  Divider(),
                  ListTile(
                      title: Text('Description'),
                      subtitle: Text('...'),
                      leading: Icon(Icons.document_scanner))
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
                context: context,
                builder: (context) => Dialog(
                      insetPadding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const Icon(Icons.close),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15.3 * 2),
                            child: Text('What time did you take ... ?'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.3 * 2),
                            child: TimePickerSpinner(
                              is24HourMode: true,
                              isForce2Digits: true,
                              minutesInterval: 5,
                              onTimeChange: (time) {},
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 5.3 * 2),
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                Navigator.of(context).pop();
                              },
                              child: const Text('Submit'),
                            ),
                          )
                        ],
                      ),
                    )),
          ),
        ),
      );
}

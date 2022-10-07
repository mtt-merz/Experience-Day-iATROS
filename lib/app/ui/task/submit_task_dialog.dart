import 'package:experience_day_iatros/app/models/task/task.dart';
import 'package:experience_day_iatros/app/ui/task/submit_task_cubit.dart';
import 'package:experience_day_iatros/app/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class SubmitTaskDialog extends StatefulWidget {
  final Task task;

  const SubmitTaskDialog(this.task, {Key? key}) : super(key: key);

  @override
  State<SubmitTaskDialog> createState() => _SubmitTaskDialogState();
}

class _SubmitTaskDialogState extends State<SubmitTaskDialog> {
  late final cubit = SubmitTaskCubit(widget.task);

  @override
  void dispose() {
    super.dispose();
    cubit.close();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder(
        bloc: cubit,
        builder: (context, Task task) => Dialog(
          insetPadding: const EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(Utils.transformSize(5.3)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      child: IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Utils.transformSize(15.3),
                    vertical: Utils.transformSize(7.3),
                  ),
                  child: Text('What time did you take ${task.title}?',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.3 * 2),
                  child: TimePickerSpinner(
                    is24HourMode: true,
                    isForce2Digits: true,
                    minutesInterval: 5,
                    onTimeChange: cubit.changeTime,
                    spacing: 0,
                    itemHeight: 40,
                    normalTextStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.grey),
                    highlightedTextStyle: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: Utils.transformSize(7.3)),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.3 * 2),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => cubit.submit().then((_) {
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    }),
                    child: const Text('Submit'),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}

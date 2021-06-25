import 'package:flutter/material.dart';
import 'package:workout_tracker/model/workout.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker/model/workout_notifier.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WorkoutNotifier workout = context.read<WorkoutNotifier>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Current Workout'),
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
          child: Row(
            children: [
              Consumer<WorkoutNotifier>(
                  builder: (context, workout, child) => Text(
                        workout.getDateAsString(),
                        style: TextStyle(fontSize: 20),
                      )),
              IconButton(
                  onPressed: () => _selectDate(context), icon: Icon(Icons.edit))
            ],
          )),
    );
  }

  _selectDate(BuildContext context) async {
    WorkoutNotifier workout = context.read<WorkoutNotifier>();
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: workout.getDate(),
        firstDate: DateTime(2010),
        lastDate: DateTime(2030));
    if (picked != null && picked != workout.getDate()) {
      workout.setDate(picked);
      workout.setTitle("new Title");
    }
  }
}

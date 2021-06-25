import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:workout_tracker/model/workout.dart';
import 'package:workout_tracker/model/workout_notifier.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool currentWorkoutActive = context.read<WorkoutNotifier>().exists();
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Create new Exercise'),
            onTap: () => Navigator.pushNamed(context, '/new_exercise'),
          ),
          ListTile(
              title: Text('Exercise Overview'),
              onTap: () =>
                  Navigator.pushNamed(context, '/exercise_overview')),
          if(currentWorkoutActive) ListTile(
            title: Text('Current Workout'),
            onTap: () => Navigator.pushNamed(context, '/current_workout'),
          )
        ],
      ),
    );
  }
}
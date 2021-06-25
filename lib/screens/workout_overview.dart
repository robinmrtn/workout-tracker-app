import 'package:flutter/material.dart';
import 'package:workout_tracker/model/workout.dart';
import 'package:workout_tracker/model/workout_notifier.dart';
import 'package:workout_tracker/model/workout_sessions.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import 'drawer.dart';

class WorkoutOverview extends StatelessWidget {
  const WorkoutOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text("This is the AppBar title"),
        ),
        body: WorkoutList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (!context.read<WorkoutNotifier>().exists()) {
              context.read<WorkoutNotifier>().create();
            } else {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text('Warning'),
                    content: Text('Current Workout already active'),
                      ));
            }
          },
          tooltip: 'Add Workout',
          child: Icon(Icons.add),
        ));
  }
}

class WorkoutList extends StatefulWidget {
  const WorkoutList({Key? key}) : super(key: key);

  @override
  _WorkoutListState createState() => _WorkoutListState();
}

class _WorkoutListState extends State<WorkoutList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: context.read<WorkoutSessions>().length,
      itemBuilder: (ctx, i) {
        return ListTile(
          title:
              Text((ctx.read<WorkoutSessions>().get(i).getDateAsString())),
          //subtitle: Text(convertedDateTime(ctx.read<WorkoutSessions>().get(i).date)),
        );
      },
    );
  }
}

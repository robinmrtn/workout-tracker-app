import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker/model/exercise.dart';
import 'package:workout_tracker/model/workout_sessions.dart';
import 'package:workout_tracker/screens/exercise_overview.dart';
import 'package:workout_tracker/screens/new_exercise.dart';
import 'package:workout_tracker/screens/workout.dart';
import 'package:workout_tracker/screens/workout_overview.dart';

import 'model/workout.dart';
import 'model/workout_notifier.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => WorkoutSessions()),
    ChangeNotifierProvider(create: (_) => ExerciseList()),
    ChangeNotifierProvider(create: (_) => WorkoutNotifier())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: <String, WidgetBuilder>{
        '/': (context) => WorkoutOverview(),
        '/new_exercise': (context) => NewExerciseScreen(),
        '/exercise_overview': (context) => ExerciseOverview(),
        '/current_workout': (context) => WorkoutScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: WorkoutOverview(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:workout_tracker/model/workout.dart';

class WorkoutSessions with ChangeNotifier{
  late List<Workout> _workouts;

  int get length => _workouts.length;
  Workout get(int i) => _workouts[i];

  add(Workout workout) {
    _workouts.add(workout);
  }

  WorkoutSessions() {
    _workouts = [];
    _workouts.add(Workout("1", DateTime.now()));
    _workouts.add(Workout("2", DateTime.now()));
    _workouts.add(Workout("3", DateTime.now()));
    _workouts.add(Workout("4", DateTime.now()));
    _workouts.add(Workout("5", DateTime.now()));
  }
}
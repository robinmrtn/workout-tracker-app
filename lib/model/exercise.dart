import 'package:flutter/cupertino.dart';

class Exercise {
  String _name;

  String get name => _name;

  Exercise(this._name);
}

class ExerciseSet {
  int _reps;
  double _weightKg;
  Exercise _exercise;

  ExerciseSet(this._reps, this._weightKg, this._exercise);
}

class ExerciseList with ChangeNotifier{
  late List<Exercise> _exercises;

  int get length => _exercises.length;
  Exercise get(int i) {
    return _exercises[i];
  }
  add(Exercise exercise) {
    _exercises.add(exercise);
  }

  ExerciseList() {
    _exercises = [];
    _exercises.add(Exercise("bench press"));
    _exercises.add(Exercise("ohp"));
    _exercises.add(Exercise("squat"));
    _exercises.add(Exercise("deadlift"));
  }
}
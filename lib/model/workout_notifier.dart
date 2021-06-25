import 'package:flutter/material.dart';
import 'package:workout_tracker/model/workout.dart';

class WorkoutNotifier extends ChangeNotifier {
  Workout? _workout;

  String getTitle() => _workout!.title;

  DateTime getDate() => _workout!.date;

  String getDateAsString() => _workout!.getDateAsString();

  void setTitle(String newTitle) {
    _workout!.title = newTitle;
    notifyListeners();
  }

  void setDate(DateTime newDate) {
    _workout!.date = newDate;
    notifyListeners();
  }

  bool exists() => _workout != null;

  create() {
    _workout = Workout("title", DateTime.now());
  }

  WorkoutNotifier();
}
import 'package:flutter/foundation.dart';
import 'package:workout_tracker/model/exercise.dart';

class Workout {
  DateTime date;
  String title;
  late List<ExerciseSet> _sets;

  String getDateAsString() => _convertedDateTime(date);

  add(ExerciseSet set) {
    _sets.add(set);
  }

  String _convertedDateTime(DateTime dateTime) {
    return "${dateTime.day.toString().padLeft(2, '0')}"
        ".${dateTime.month.toString().padLeft(2, '0')}"
        ".${dateTime.year.toString()}";
  }

  Workout(this.title, this.date);
}



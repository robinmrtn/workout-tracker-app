import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_tracker/model/exercise.dart';

class ExerciseOverview extends StatelessWidget {
  const ExerciseOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exercise Overview'),
      ),
    body: ExerciseListWidget(),);
  }
}

class ExerciseListWidget extends StatefulWidget {
  const ExerciseListWidget({Key? key}) : super(key: key);

  @override
  _ExerciseListWidgetState createState() => _ExerciseListWidgetState();
}

class _ExerciseListWidgetState extends State<ExerciseListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: context.read<ExerciseList>().length,
        itemBuilder: (ctx, i) {
        return ListTile(
        title: Text(ctx.read<ExerciseList>().get(i).name),
    );
        });
  }
}


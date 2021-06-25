import 'package:flutter/material.dart';

class NewExerciseScreen extends StatelessWidget {
  const NewExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create new Exercise'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Exercise Name'),
          ),
          TextButton(
              onPressed: () => {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text('Button pressed'),
                              content: Text('Dialog content'),
                            ))
                  },
              child: Text("add exercise"))
        ],
      ),
    );
  }
}

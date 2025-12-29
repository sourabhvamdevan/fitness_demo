import 'package:flutter/material.dart';
import '../data/models/workout_model.dart';

class WorkoutCard extends StatelessWidget {
  final Workout workout;

  const WorkoutCard({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: ListTile(
        title: Text(workout.title),
        subtitle: Text('${workout.duration} mins • ${workout.calories} kcal'),
        trailing: const Icon(Icons.fitness_center),
      ),
    );
  }
}

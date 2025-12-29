import 'package:flutter/material.dart';
import '../data/models/workout_model.dart';
import '../data/services/workout_service.dart';

class WorkoutProvider with ChangeNotifier {
  List<Workout> _workouts = [];

  List<Workout> get workouts => _workouts;

  void loadWorkouts() {
    _workouts = WorkoutService.getWorkouts();
    notifyListeners();
  }
}

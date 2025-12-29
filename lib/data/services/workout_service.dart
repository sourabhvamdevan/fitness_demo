import '../models/workout_model.dart';

class WorkoutService {
  static List<Workout> getWorkouts() {
    return [
      Workout(title: 'Morning Cardio', duration: 30, calories: 200),
      Workout(title: 'Strength Training', duration: 45, calories: 350),
      Workout(title: 'Yoga Flow', duration: 20, calories: 100),
    ];
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/workout_model.dart';

class FirestoreService {
  final _db = FirebaseFirestore.instance;

  Future<void> addWorkout(Workout workout) async {
    await _db.collection('workouts').add({
      'title': workout.title,
      'duration': workout.duration,
      'calories': workout.calories,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  Stream<List<Workout>> getWorkouts() {
    return _db.collection('workouts').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data();
        return Workout(
          title: data['title'],
          duration: data['duration'],
          calories: data['calories'],
        );
      }).toList();
    });
  }
}

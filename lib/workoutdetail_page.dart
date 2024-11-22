import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_system/workout_page.dart';

class WorkoutDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String workoutName = Get.arguments; // Get the passed workout name

    return Scaffold(
      appBar: AppBar(
        title: Text(workoutName),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WorkoutsPage(),
                )
            ); // Navigate back to the Workouts Page
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Workout Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'This is a detailed description of the $workoutName workout. '
                  'Here you can include instructions, sets, reps, and tips for the user.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Start workout or navigate to workout tracking page
              },
              child: Text('Start Workout'),
            ),
          ],
        ),
      ),
    );
  }
}

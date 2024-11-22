import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_system/dashboard_page.dart';
import 'package:gym_system/workoutdetail_page.dart';

class WorkoutsPage extends StatelessWidget {
  final List<String> workouts = [
    "Full Body Workout",
    "Upper Body Strength",
    "Leg Day",
    "Cardio Blast",
    "Core and Abs",
    "Yoga and Flexibility"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workouts'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardPage(),
              )
            ); // Navigate back to the previous page
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIntroText(),
            SizedBox(height: 20),
            _buildWorkoutsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildIntroText() {
    return Text(
      "Choose a workout and get started!",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildWorkoutsList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: workouts.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            title: Text(workouts[index]),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WorkoutDetailsPage(),
                  )
              ); // Navigate to workout details
            },
          ),
        );
      },
    );
  }
}

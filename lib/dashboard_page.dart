import 'package:flutter/material.dart';
import 'package:gym_system/bmi_page.dart';
import 'package:gym_system/diet_page.dart';
import 'package:gym_system/setings_page.dart';
import 'package:gym_system/workout_page.dart';
import 'profile_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gym Dashboard'),
      ),
      body: SingleChildScrollView( // Added SingleChildScrollView to allow scrolling
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome section
              const Text(
                "Welcome, Darshana!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Let's get fit today!",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),

              // Metrics Overview Section (e.g., Workouts, Calories, Progress)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildMetricCard("Workouts", "15"),
                  _buildMetricCard("Calories", "1200 kcal"),
                  _buildMetricCard("Progress", "85%"),
                ],
              ),
              const SizedBox(height: 30),

              // Buttons for navigation
              _buildNavigationButton(context, "Workouts", Icons.fitness_center, onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  WorkoutsPage()),
                );
              }),
              const SizedBox(height: 10),
              _buildNavigationButton(context, "Diet Plan", Icons.local_dining, onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  DietPage()),
                );
              }),
              const SizedBox(height: 10),
              _buildNavigationButton(context, "Profile", Icons.person, onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              }),
              const SizedBox(height: 10),
              _buildNavigationButton(context, "Settings", Icons.settings, onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  SettingsPage()),
                );
              }),
              const SizedBox(height: 10),
              _buildNavigationButton(context, "BMI Calculate", Icons.calculate_outlined, onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  BMICalculatorPage()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  // Metric card widget for displaying key stats
  Widget _buildMetricCard(String title, String value) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 100,
        height: 120,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  // Navigation button for different sections
  Widget _buildNavigationButton(
      BuildContext context, String title, IconData icon,
      {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Icon(icon, size: 30),
          title: Text(title, style: const TextStyle(fontSize: 18)),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}

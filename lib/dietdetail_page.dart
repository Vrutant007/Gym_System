import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_system/dashboard_page.dart';

class DietDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> dietPlan = Get.arguments; // Get the passed diet plan details

    return Scaffold(
      appBar: AppBar(
        title: Text(dietPlan['title'] ?? 'Diet Details'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardPage(),
                )
            ); // Navigate back to the Diet Page
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dietPlan['title'] ?? '',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              dietPlan['description'] ?? '',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Start diet plan or save it
              },
              child: Text('Start Diet Plan'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_system/dashboard_page.dart';
import 'package:gym_system/dietdetail_page.dart';

class DietPage extends StatelessWidget {
  final List<Map<String, String>> dietPlans = [
    {
      "title": "High Protein Diet",
      "description": "A diet focused on high protein intake to build muscle."
    },
    {
      "title": "Low Carb Diet",
      "description": "A diet low in carbohydrates to help with fat loss."
    },
    {
      "title": "Balanced Diet",
      "description": "A well-rounded diet that includes all essential nutrients."
    },
    {
      "title": "Vegetarian Diet",
      "description": "A plant-based diet for overall health and well-being."
    },
    {
      "title": "Keto Diet",
      "description": "A diet low in carbs and high in fats for quick fat loss."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Plans'),
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
            _buildDietPlansList(),
          ],
        ),
      ),
    );
  }

  Widget _buildIntroText() {
    return Text(
      "Select a diet plan that suits your fitness goals:",
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildDietPlansList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: dietPlans.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            title: Text(dietPlans[index]['title']!),
            subtitle: Text(dietPlans[index]['description']!),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DietDetailsPage(),
                  )
              );
            },
          ),
        );
      },
    );
  }
}

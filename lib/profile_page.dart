import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile image and details
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpg'), // Example profile image
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Darshana Koshti",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text("darshana32@gmail.com", style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Edit Profile button
            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.edit),
                label: const Text("Edit Profile"),
                onPressed: () {
                  // Navigate to Edit Profile page or perform edit action
                },
              ),
            ),
            const SizedBox(height: 20),

            // Additional profile information or actions
            const Text(
              "About Me:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "I am a fitness enthusiast and have been working out regularly for the last 3 years. "
                  "I enjoy weightlifting, cardio, and staying healthy!",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_system/dashboard_page.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DashboardPage(),
                )
            ); // Go back to the previous screen
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account Settings'),
              subtitle: Text('Manage your account details.'),
              onTap: () {
                // Navigate to account settings
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification Settings'),
              subtitle: Text('Customize your notifications.'),
              onTap: () {
                // Navigate to notification settings
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy Settings'),
              subtitle: Text('Manage your privacy preferences.'),
              onTap: () {
                // Navigate to privacy settings
              },
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              subtitle: Text('Change app language.'),
              onTap: () {
                // Navigate to language settings
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help & Support'),
              subtitle: Text('Get help and support.'),
              onTap: () {
                // Navigate to help and support
              },
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add any action for logout or saving settings
                },
                child: Text('Save Changes'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

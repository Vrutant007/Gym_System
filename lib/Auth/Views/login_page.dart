import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym_system/Auth/Controller/gym_controller.dart';
import 'package:gym_system/Auth/Views/register_page.dart';

class LogPage extends StatelessWidget {
  final GymController gymController = Get.put(GymController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 100),
              TextField(
                controller: gymController.emailCTC,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: gymController.passCTC,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              Obx(() {
                return gymController.isLoading.value
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                  onPressed: () async {
                    await gymController.loginCont();
                    // Add navigation logic if needed
                  },
                  child: const Text('Login'),
                );
              }),
              const SizedBox(height: 20),
              Obx(() {
                return Text(
                  gymController.response.value.message ?? '',
                  style: const TextStyle(color: Colors.red),
                );
              }),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegPage()),
                  ); // Navigate to Register Page
                },
                child: const Text('Don\'t have an account? Register here'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*import 'dart:convert';
import 'package:gym_system/Auth/Model/gym_model.dart';
import 'package:dio/dio.dart';
import 'package:gym_system/Auth/Views/login_page.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    final String baseUrl = 'https://api.postman.com/collections/27509456-31a89bb2-eb26-4e65-8562-87fe6f6f4853?access_key=PMAT-01HRYCYJZBBFQG0V39RFJ87PYN'; // Replace with your API URL
  }*/

  // Login method
  /*Future<GymModel> login(String email, String password) async {
    return await _dio.post('login', data: {
      'email': email,
      'password': password,
    });
  }

  // Register method
  Future<GymModel>register(String email, String password, String name) async {
    final user_form =FormData();

    user_form.fields.add(MapEntry("Name", name));
    user_form.fields.add(MapEntry("Email", email));
    user_form.fields.add(MapEntry("Password", password));

    final value_user = await dio.post("${baseUrl}register",data: user_form);
  }*/
  /*Future<GymModel> login(String name, String email, String password) async {
    try {
      // Use FormData.fromMap for easy form construction
      final FormData userForm = FormData.fromMap({
        'name': name,
        'email': email,
        'password': password,
      });

      // Make the API request
      final Response valueUser = await _dio.post(
        "${baseUrl}register", // Adjust the endpoint if necessary
        data: userForm,
      );

      // Check if the response status code is 200 (success)
      if (valueUser.statusCode == 200) {
        // Convert the response data to GymModel
        final resultUser = GymModel.fromJson(valueUser.data);
        return resultUser;
      } else {
        throw Exception('Failed to login: Status code ${valueUser.statusCode}');
      }
    } catch (error) {
      // Handle any errors during the login process
      throw Exception('Login error: $error');
    }
  }
}*/
import 'package:dio/dio.dart';
import 'package:gym_system/Auth/Model/gym_model.dart';

class ApiService {
  final Dio _dio = Dio();

  // Define baseUrl for the API
  final String baseUrl = 'https://www.sparkstoideas.com/LJ/api'; // Make sure this is correct

  Future<GymModel> register(String name, String email, String password) async {
    try {
      // Create form data using FormData.fromMap
      final FormData userForm = FormData.fromMap({
        'name': name,
        'email': email,
        'password': password,
      });

      // Make the API request
      final Response valueUser = await _dio.post(
        "${baseUrl}/register", // Ensure this matches your API endpoint
        data: userForm,
      );

      // Check if the response is successful
      if (valueUser.statusCode == 200) {
        final resultUser = GymModel.fromJson(valueUser.data);
        return resultUser;
      } else {
        throw Exception('Failed to Register: Status code ${valueUser.statusCode}');
      }
    } catch (error) {
      // Handle any errors during the login process
      throw Exception('Register error: $error');
    }
  }

  Future<GymModel> login(String email, String password) async {
    try {
      // Create form data using FormData.fromMap
      final FormData userForm = FormData.fromMap({
        'email': email,
        'password': password,
      });

      // Make the API request
      final Response valueUser = await _dio.post(
        "${baseUrl}/login", // Ensure this matches your API endpoint
        data: userForm,
      );

      // Check if the response is successful
      if (valueUser.statusCode == 200) {
        final resultUser = GymModel.fromJson(valueUser.data);
        return resultUser;
      } else {
        throw Exception('Failed to login: Status code ${valueUser.statusCode}');
      }
    } catch (error) {
      // Handle any errors during the login process
      throw Exception('Login error: $error');
    }
  }

}

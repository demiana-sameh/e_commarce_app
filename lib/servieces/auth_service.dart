import 'package:flutter/material.dart';

import '../model/login_response_model.dart';
import 'api_services.dart';

class AuthService {

  // Login
  static Future<LoginResponse> login(
      String email,
      String password,
      ) async {
    final response = await ApiServices.dio.post(
      '/api/auth/login',
      data: {
        'email': email,
        'password': password,
      },
    );

    return LoginResponse.fromJson(response.data);
  }


  // Register
  static Future<void> register(
      String email,
      String firstName,
      String lastName,
      String password,
      ) async {

    await ApiServices.dio.post(
      '/api/auth/register',
      data: {
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'password': password,
      },
    );
  }
  // Forgot Password
  static Future<void> forgotPassword(String email) async {
    await ApiServices.dio.post(
      '/api/auth/forgot-password',
      data: {
        'email': email,
      },
    );
  }
}
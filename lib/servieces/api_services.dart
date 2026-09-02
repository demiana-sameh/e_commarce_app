import 'package:dio/dio.dart';

class ApiServices {
  static final Dio dio = Dio(
      BaseOptions(
          baseUrl: 'https://accessories-eshop.runasp.net',
          connectTimeout: Duration(seconds: 15),
          receiveTimeout: Duration(seconds: 15),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
          }

      )
  );
}
import 'package:dio/dio.dart';

// nek name of this class is 'rapar'
class ApiServies {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiServies({required this.dio});
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}

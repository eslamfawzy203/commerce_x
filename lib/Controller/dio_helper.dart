import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  static String baseUrl = 'https://fakestoreapi.com/';

  init() {
    dio = Dio(BaseOptions(baseUrl: baseUrl));
  }

 static Future <Response> get({required String endpoint}) async {
    return await dio.get(endpoint);
  }
}

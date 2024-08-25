import 'package:dio/dio.dart';
import 'package:storeapp/Core/utils/loggers.dart';

class ApiService {
  final _baseUrl = "https://ccca-197-43-150-249.ngrok-free.app";

  late Dio dio;

  ApiService() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        headers: {
          "accept": "*/*",
        },
        connectTimeout: const Duration(seconds: 3),
      ),
    );
  }

  Future<dynamic> get({
    required String endpoint,
  }) async {
    var response = await dio.get(
      endpoint,
    );

    return response.data;
  }

  Future<dynamic> post({
    required String endpoint,
    Map<String, dynamic>? data,
  }) async {
    dio.options.headers.addAll({
      "Content-Type": "application/json",
    });

    var response = await dio.post(
      endpoint,
      data: data,
    );

    return response.data;
  }

  Future<dynamic> put({
    required String endpoint,
    Map<String, dynamic>? data,
  }) async {
    dio.options.headers.addAll({
      "Content-Type": "application/json",
    });

    var response = await dio.put(
      endpoint,
      data: data,
    );

    return response.data;
  }

  Future<dynamic> postFormData({
    required String endpoint,
    required dynamic data,
  }) async {
    AppLogger.print("start register");

    FormData formData = FormData.fromMap(data);
    dio.options.headers.addAll({
      "Content-Type": "multipart/form-data",
    });

    var response = await dio.post(endpoint, data: formData);

    return response.data;
  }

  Future<dynamic> putFormData({
    required String endpoint,
    required dynamic data,
  }) async {
    FormData formData = FormData.fromMap(data);
    dio.options.headers.addAll({
      "Content-Type": "multipart/form-data",
    });

    var response = await dio.put(endpoint, data: formData);

    return response.data;
  }
}

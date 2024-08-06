import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://localhost:8080";

  late Dio dio;

  ApiService() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        headers: {
          "accept": "*/*",
        },
      ),
    );
  }

  Future<dynamic> postFormData({
    required String endpoint,
    required dynamic data,
  }) async {
    FormData formData = FormData.fromMap(data);
    dio.options.headers.addAll({
      "Content-Type": "multipart/form-data",
    });

    var response = await dio.post(endpoint, data: formData);
    return response.data;
  }
}

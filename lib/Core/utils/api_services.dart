import 'package:dio/dio.dart';
import 'package:storeapp/Core/utils/loggers.dart';

class ApiService {
  final _baseUrl = "http://127.0.0.1:8080";

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
    AppLogger.print("start register");

    FormData formData = FormData.fromMap(data);
    dio.options.headers.addAll({
      "Content-Type": "multipart/form-data",
    });

    try {
      var response = await dio.post(endpoint, data: formData);

      AppLogger.print(response.data['message']);

      return response.data;
    } on Exception catch (e) {
      AppLogger.print(e.toString());
    }
  }
}

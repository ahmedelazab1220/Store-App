import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Core/utils/api_services.dart';
import 'package:storeapp/Core/utils/app_apis.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/auth/data/models/login_model.dart';
import 'package:storeapp/Features/auth/data/models/register_model.dart';
import 'package:storeapp/Features/auth/data/repos/auth_repo.dart';

class AuthRepoImplementation implements AuthRepo {
  final ApiService apiService;

  AuthRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, LoginModel>> login(
      {required String phoneNumber}) async {
    try {
      var response = await apiService.postFormData(
        endpoint: AppApis.loginEndPoint,
        data: {
          "phone": phoneNumber,
        },
      );
      //final user = LoginModel.fromJson(response);
      //final decodedToken = JwtDecoder.decode(user.accessToken);

      return right(
        LoginModel.fromJson(response),
      );
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, RegisterModel>> register({
    required String phoneNumber,
    required String email,
    required String password,
    required String country,
    required String city,
    required String street,
  }) async {
    try {
      var response = await apiService.postFormData(
        endpoint: AppApis.registerEndPoint,
        data: {
          "phoneNumber": phoneNumber,
          "email": email,
          "password": password,
          "address.state": country,
          "address.city": city,
          "address.street": street,
        },
      );

      final user = RegisterModel.fromJson(response);
      final message = user.message;

      AppLogger.print(message);

      return right(
        RegisterModel.fromJson(response),
      );
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    }
  }
}

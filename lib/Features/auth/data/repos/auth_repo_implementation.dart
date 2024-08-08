import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Core/utils/api_services.dart';
import 'package:storeapp/Core/utils/app_apis.dart';
import 'package:storeapp/Core/utils/hive.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/auth/data/models/login_model.dart';
import 'package:storeapp/Features/auth/data/models/register_model.dart';
import 'package:storeapp/Features/auth/data/repos/auth_repo.dart';

class AuthRepoImplementation implements AuthRepo {
  final ApiService apiService;

  AuthRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, LoginModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await apiService.postFormData(
        endpoint: AppApis.loginEndPoint,
        data: {
          "email": email,
          "password": password,
        },
      );
      final user = LoginModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user.accessToken);
      await Hive.openBox(AppHive.userBox);
      Hive.box(AppHive.userBox).put(
        AppHive.userEmail,
        decodedToken['email'],
      );
      Hive.box(AppHive.userBox).put(
        AppHive.userPhoneNumber,
        decodedToken['phoneNumber'],
      );
      Hive.box(AppHive.userBox).put(
        AppHive.userName,
        decodedToken['fullName'],
      );
      Hive.box(AppHive.userBox).put(
        AppHive.userRole,
        decodedToken['role'],
      );
      Hive.box(AppHive.userBox).put(
        AppHive.userImage,
        decodedToken['imageUrl'],
      );
      Hive.box(AppHive.userBox).put(
        AppHive.userStateAddress,
        decodedToken['Address']['state'],
      );
      Hive.box(AppHive.userBox).put(
        AppHive.userCityAddress,
        decodedToken['Address']['city'],
      );
      Hive.box(AppHive.userBox).put(
        AppHive.userStreetAddress,
        decodedToken['Address']['street'],
      );

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
    required String state,
    required String city,
    required String street,
    required MultipartFile image,
    String? name,
    String? zipCode,
  }) async {
    try {
      var response = await apiService.postFormData(
        endpoint: AppApis.registerEndPoint,
        data: {
          "phoneNumber": phoneNumber,
          "email": email,
          "password": password,
          "address.state": state,
          "address.city": city,
          "address.street": street,
          "image": image,
          "name": name,
          "zipCode": zipCode,
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

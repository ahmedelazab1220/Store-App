import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Core/utils/api_services.dart';
import 'package:storeapp/Core/utils/app_apis.dart';
import 'package:storeapp/Core/utils/hive.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/profile/data/models/user_image_model.dart';
import 'package:storeapp/Features/profile/data/models/user_profile_model.dart';
import 'package:storeapp/Features/profile/data/repos/profile_repo.dart';

class ProfileRepoImplementation extends ProfileRepo {
  final ApiService apiService;
  ProfileRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, UserImageModel>> updateUserImage({
    required MultipartFile image,
    required String email,
    required String oldImageUrl,
  }) async {
    try {
      var response = await apiService.putFormData(
        endpoint: AppApis.updateUserImageEndPoint,
        data: {
          "oldImageUrl": oldImageUrl,
          "email": email,
          "image": image,
        },
      );

      return right(
        UserImageModel.fromJson(response),
      );
    } on DioException catch (e) {
      AppLogger.print(e.toString());
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, UserProfileModel>> updateUserProfile({
    String? name,
    required String email,
    required String phoneNumber,
    required String street,
    required String city,
    required String state,
    String? zipCode,
  }) async {
    try {
      var response = await apiService.put(
        endpoint: AppApis.updateUserProfile,
        data: {
          "fullName": name,
          "email": email,
          "phoneNumber": phoneNumber,
          "street": street,
          "city": city,
          "state": state,
          "zipCode": zipCode
        },
      );

      final user = UserProfileModel.fromJson(response);

      Hive.box(AppHive.userBox).put(AppHive.userName, user.fullName);
      Hive.box(AppHive.userBox).put(AppHive.userPhoneNumber, user.phoneNumber);
      Hive.box(AppHive.userBox).put(AppHive.userStreetAddress, user.street);
      Hive.box(AppHive.userBox).put(AppHive.userCityAddress, user.city);
      Hive.box(AppHive.userBox).put(AppHive.userStateAddress, user.state);
      Hive.box(AppHive.userBox).put(AppHive.userZipCodeAddress, user.zipCode);

      return right(
        UserProfileModel.fromJson(response),
      );
    } on DioException catch (e) {
      AppLogger.print(e.toString());
      return left(ServerFailure.fromDioException(e));
    }
  }
}

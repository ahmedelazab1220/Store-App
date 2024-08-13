import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Core/utils/api_services.dart';
import 'package:storeapp/Core/utils/app_apis.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/profile/data/models/user_image_model.dart';
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
      var response = await apiService.postFormData(
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
}

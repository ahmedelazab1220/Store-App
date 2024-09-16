import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Core/models/api_response_model.dart';
import 'package:storeapp/Core/utils/api_services.dart';
import 'package:storeapp/Core/utils/app_apis.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/otps/data/repos/otp_repo.dart';

class OtpRepoImplementation extends OtpRepo {
  final ApiService apiService;
  OtpRepoImplementation({
    required this.apiService,
  });

  @override
  Future<Either<Failure, ApiResponseModel>> verifyOtp(
      {required String otpCode}) async {
    try {
      var response = await apiService.post(
        endpoint: AppApis.registerEndPoint,
        data: {
          "otp": otpCode,
        },
      );

      return right(
        ApiResponseModel.fromJson(response),
      );
    } on DioException catch (e) {
      AppLogger.print(e.toString());
      return left(ServerFailure.fromDioException(e));
    }
  }

  @override
  Future<Either<Failure, ApiResponseModel>> requestOtp(
      {required String email}) async {
    try {
      AppLogger.print(email);
      var response = await apiService
          .post(endpoint: AppApis.forgetPasswordAndVerifyOtp, params: {
        "email": email,
      });

      return right(
        ApiResponseModel.fromJson(response),
      );
    } on DioException catch (e) {
      AppLogger.print(e.toString());
      return left(ServerFailure.fromDioException(e));
    }
  }
}

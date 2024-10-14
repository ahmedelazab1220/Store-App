import 'package:dartz/dartz.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Core/models/api_response_model.dart';

abstract class OtpRepo {
  Future<Either<Failure, ApiResponseModel>> verifyOtp({
    required String otpCode,
  });

  Future<Either<Failure, ApiResponseModel>> requestOtp({
    required String email,
  });
}

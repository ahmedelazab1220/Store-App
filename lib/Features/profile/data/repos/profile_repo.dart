import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Features/profile/data/models/user_image_model.dart';

abstract class ProfileRepo {
  Future<Either<Failure, UserImageModel>> updateUserImage({
    required MultipartFile image,
    required String email,
    required String oldImageUrl,
  });
}

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Features/profile/data/models/user_image_model.dart';
import 'package:storeapp/Features/profile/data/models/user_profile_model.dart';

abstract class ProfileRepo {
  Future<Either<Failure, UserImageModel>> updateUserImage({
    required MultipartFile image,
    required String email,
    required String oldImageUrl,
  });

  Future<Either<Failure, UserProfileModel>> updateUserProfile({
    String? name,
    required String email,
    required String phoneNumber,
    required String street,
    required String city,
    required String state,
    String? zipCode,
  });
}

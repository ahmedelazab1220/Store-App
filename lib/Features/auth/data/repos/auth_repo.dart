import 'package:dio/dio.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Features/auth/data/models/login_model.dart';
import 'package:dartz/dartz.dart';
import 'package:storeapp/Features/auth/data/models/register_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, LoginModel>> login({
    required String email,
    required String password,
  });

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
  });
}

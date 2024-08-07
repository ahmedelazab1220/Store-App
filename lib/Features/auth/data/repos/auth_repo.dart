import 'dart:io';

import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Features/auth/data/models/login_model.dart';
import 'package:dartz/dartz.dart';
import 'package:storeapp/Features/auth/data/models/register_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, LoginModel>> login({
    required String phoneNumber,
  });

  Future<Either<Failure, RegisterModel>> register({
    required String phoneNumber,
    required String email,
    required String password,
    required String country,
    required String city,
    required String street,
    required File file,
  });
}

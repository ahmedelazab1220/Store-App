import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Features/auth/data/models/login_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, LoginModel>> login({
    required String phoneNumber,
  });

  Future<Either<Failure, LoginModel>> register({
    required String phoneNumber,
    required String username,
    String? address,
  });
}

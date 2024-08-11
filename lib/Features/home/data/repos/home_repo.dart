import 'package:dartz/dartz.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Features/home/data/models/banner_model.dart';
import 'package:storeapp/Features/home/data/models/category_model.dart';
import 'package:storeapp/Features/home/data/models/company_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BannerModel>>> getBanners();

  Future<Either<Failure, List<CompanyModel>>> getCompanies();

  Future<Either<Failure, List<CategoryModel>>> getCategories();
}

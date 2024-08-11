import 'package:dartz/dartz.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Core/utils/api_services.dart';
import 'package:storeapp/Core/utils/app_apis.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/home/data/models/banner_model.dart';
import 'package:storeapp/Features/home/data/models/category_model.dart';
import 'package:storeapp/Features/home/data/models/company_model.dart';
import 'package:storeapp/Features/home/data/repos/home_repo.dart';

class HomeRepoImplementation extends HomeRepo {
  final ApiService apiService;

  HomeRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, List<BannerModel>>> getBanners() async {
    try {
      var response = await apiService.get(endpoint: AppApis.getBanners);

      List<BannerModel> banners = [];
      for (var banner in response) {
        banners.add(BannerModel.fromJson(banner));
      }

      AppLogger.print(" length : + ${banners.length}");

      AppLogger.print("list : + ${banners.toList()}");

      return right(banners);
    } catch (e) {
      AppLogger.print(e.toString());
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CompanyModel>>> getCompanies() async {
    try {
      var response = await apiService.get(endpoint: AppApis.getCompanies);

      List<CompanyModel> companies = [];
      for (var company in response) {
        companies.add(CompanyModel.fromJson(company));
      }

      AppLogger.print(" length : + ${companies.length}");

      return right(companies);
    } catch (e) {
      AppLogger.print(e.toString());
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getCategories() async {
    try {
      var response = await apiService.get(endpoint: AppApis.getCategories);

      List<CategoryModel> categories = [];
      for (var category in response) {
        categories.add(CategoryModel.fromJson(category));
      }

      AppLogger.print(" length : + ${categories.length}");

      return right(categories);
    } catch (e) {
      AppLogger.print(e.toString());
      return Left(ServerFailure(e.toString()));
    }
  }
}

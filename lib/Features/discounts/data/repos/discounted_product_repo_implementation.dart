import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Core/utils/api_services.dart';
import 'package:storeapp/Core/utils/app_apis.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/discounts/data/models/discounted_product_model.dart';
import 'package:storeapp/Features/discounts/data/repos/discounted_product_repo.dart';

class DiscountedProductRepoImplementation extends DiscountedProductRepo {
  final ApiService apiService;

  DiscountedProductRepoImplementation({required this.apiService});

  @override
  Future<Either<Failure, List<DiscountedProductModel>>>
      getDiscountedProducts() async {
    try {
      var response =
          await apiService.get(endpoint: AppApis.getDiscountedProductEndPoint);
      List<DiscountedProductModel> discountedProducts = [];
      for (var discountedProduct in response) {
        discountedProducts.add(
          DiscountedProductModel.fromJson(discountedProduct),
        );
      }
      return right(discountedProducts);
    } on DioException catch (e) {
      AppLogger.print(e.toString());
      return Left(ServerFailure(e.toString()));
    }
  }
}

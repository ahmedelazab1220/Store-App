import 'package:dartz/dartz.dart';
import 'package:storeapp/Core/errors/failures.dart';
import 'package:storeapp/Features/discounts/data/models/discounted_product_model.dart';

abstract class DiscountedProductRepo {
  Future<Either<Failure, List<DiscountedProductModel>>> getDiscountedProducts();
}

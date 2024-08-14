part of 'discounted_product_cubit.dart';

sealed class DiscountedProductState extends Equatable {
  const DiscountedProductState();

  @override
  List<Object> get props => [];
}

final class DiscountedProductInitial extends DiscountedProductState {}

final class DiscountedProductLoadingState extends DiscountedProductState {}

final class DiscountedProductLoadedState extends DiscountedProductState {
  final List<DiscountedProductModel> discountedProductModel;
  const DiscountedProductLoadedState({required this.discountedProductModel});
}

final class DiscountedProductLoadingFailedState extends DiscountedProductState {
  final String message;
  const DiscountedProductLoadingFailedState({required this.message});
}

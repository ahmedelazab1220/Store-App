import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:storeapp/Features/discounts/data/models/discounted_product_model.dart';
import 'package:storeapp/Features/discounts/data/repos/discounted_product_repo.dart';

part 'discounted_product_state.dart';

class DiscountedProductCubit extends Cubit<DiscountedProductState> {
  DiscountedProductCubit({
    required this.discountedProductRepo,
  }) : super(DiscountedProductInitial());

  final DiscountedProductRepo discountedProductRepo;

  Future<void> getAllDiscountedProduct() async {
    emit(DiscountedProductLoadingState());
    var result = await discountedProductRepo.getDiscountedProducts();
    result.fold((l) {
      emit(DiscountedProductLoadingFailedState(message: l.errorMessage));
    }, (r) {
      emit(DiscountedProductLoadedState(discountedProductModel: r));
    });
  }
}

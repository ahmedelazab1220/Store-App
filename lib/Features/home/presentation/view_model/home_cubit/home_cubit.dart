import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:storeapp/Core/utils/loggers.dart';
import 'package:storeapp/Features/home/data/models/banner_model.dart';
import 'package:storeapp/Features/home/data/models/category_model.dart';
import 'package:storeapp/Features/home/data/models/company_model.dart';
import 'package:storeapp/Features/home/data/repos/home_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeRepo}) : super(HomeInitial());

  final HomeRepo homeRepo;

  Future<void> getBanners() async {
    emit(BannersLoadingState());
    var result = await homeRepo.getBanners();
    AppLogger.print("result - ${result.toIterable()}");
    AppLogger.print(result.toString());
    result.fold((l) {
      emit(BannersFailureState(message: l.errorMessage));
    }, (r) {
      emit(BannersSuccessState(banners: r));
    });
  }

  Future<void> getCompanies() async {
    emit(CompaniesLoadingState());
    var result = await homeRepo.getCompanies();
    AppLogger.print("result - ${result.toIterable()}");
    AppLogger.print(result.toString());
    result.fold((l) {
      emit(CompaniesFailureState(message: l.errorMessage));
    }, (r) {
      emit(CompaniesSuccessState(companies: r));
    });
  }

  Future<void> getCategories() async {
    emit(CategoriesLoadingState());
    var result = await homeRepo.getCategories();
    AppLogger.print("result - ${result.toIterable()}");
    AppLogger.print(result.toString());
    result.fold((l) {
      emit(CategoriesFailureState(message: l.errorMessage));
    }, (r) {
      emit(CategoriesSuccessState(categories: r));
    });
  }
}

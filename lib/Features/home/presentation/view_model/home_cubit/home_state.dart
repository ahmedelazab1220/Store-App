part of 'home_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class CategoriesLoadingState extends HomeState {}

final class CategoriesSuccessState extends HomeState {
  final List<CategoryModel> categories;

  const CategoriesSuccessState({required this.categories});
}

final class CategoriesFailureState extends HomeState {
  final String message;
  const CategoriesFailureState({required this.message});
}

final class CompaniesLoadingState extends HomeState {}

final class CompaniesSuccessState extends HomeState {
  final List<CompanyModel> companies;

  const CompaniesSuccessState({required this.companies});
}

final class CompaniesFailureState extends HomeState {
  final String message;
  const CompaniesFailureState({required this.message});
}

final class BannersLoadingState extends HomeState {}

final class BannersSuccessState extends HomeState {
  final List<BannerModel> banners;

  const BannersSuccessState({required this.banners});
}

final class BannersFailureState extends HomeState {
  final String message;
  const BannersFailureState({required this.message});
}

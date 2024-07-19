import 'package:get_it/get_it.dart';
import 'package:storeapp/Features/onBoarding/presentation/view_model/on_boarding_cubit.dart';

final serviceLocator = GetIt.instance;

void setup() {
  serviceLocator.registerLazySingleton(
    () => OnBoardingCubit(),
  );
}

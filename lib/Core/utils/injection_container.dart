import 'package:get_it/get_it.dart';
import 'package:storeapp/Core/utils/api_services.dart';
import 'package:storeapp/Features/auth/data/repos/auth_repo_implementation.dart';
import 'package:storeapp/Features/home/data/repos/home_repo_implementation.dart';

final serviceLocator = GetIt.instance;

void setup() {
  serviceLocator.registerSingleton<ApiService>(
    ApiService(),
  );
  serviceLocator.registerSingleton<AuthRepoImplementation>(
    AuthRepoImplementation(apiService: serviceLocator<ApiService>()),
  );
  serviceLocator.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(apiService: serviceLocator<ApiService>()),
  );
}

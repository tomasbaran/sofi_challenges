import 'package:altimetrik/features/products/data/services/sofi_api.dart';
import 'package:altimetrik/features/products/domain/use_cases/get_products.dart';
import 'package:altimetrik/features/products/presentation/managers/sofi_products_managers.dart';
import 'package:get_it/get_it.dart';

GetIt locate = GetIt.instance;

void setupLocator() {
  // Register the dependencies
  // locate.registerLazySingleton(() => ProductRepository());
  locate.registerLazySingleton(() => SofiApi());
  locate.registerLazySingleton<GetProductsUseCase>(() => GetProductsUseCase(locate()));
  locate.registerLazySingleton<SofiProductsManager>(() => SofiProductsManager(getProductsUseCase: locate()));
}

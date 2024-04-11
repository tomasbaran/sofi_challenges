import 'package:altimetrik/core/failures/i_failure.dart';
import 'package:altimetrik/features/products/data/services/sofi_api.dart';
import 'package:altimetrik/features/products/domain/entities/product.dart';
import 'package:dartz/dartz.dart';

class GetProductsUseCase {
  final SofiApi _productRepository;

  GetProductsUseCase(this._productRepository);

  Future<Either<IFailure, List<Product>>> call() async => await _productRepository.getProducts();
}

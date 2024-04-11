import 'package:altimetrik/core/failures/failure.dart';
import 'package:altimetrik/core/failures/i_failure.dart';
import 'package:altimetrik/features/products/domain/entities/product.dart';
import 'package:altimetrik/features/products/domain/use_cases/get_products.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class SofiProductsManager {
  GetProductsUseCase getProductsUseCase;
  SofiProductsManager({required this.getProductsUseCase});
  final sofiProductsNotifier = ValueNotifier<Either<IFailure, List<Product>>>(/* const Right([]) */ Left(Failure(message: 'Loading...')));

  void getProducts() async {
    final products = await getProductsUseCase();
    sofiProductsNotifier.value = products;
  }
}

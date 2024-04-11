import 'dart:convert';

import 'package:altimetrik/core/constants.dart';
import 'package:altimetrik/core/failures/failure.dart';
import 'package:altimetrik/core/failures/i_failure.dart';
import 'package:altimetrik/features/products/data/services/fixture_reader.dart';
import 'package:altimetrik/features/products/domain/entities/product.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SofiApi {
  final dio = Dio();

  Future<Either<IFailure, List<Product>>> getProducts() async {
    // Call the API
    // try {
    //   final response = await dio.get(apiUrl);
    //   // final data = response.data;

    //   // MOCKING STARTS HERE

    //   // Parse the response
    //   return Right([Product(title: 'title')]);
    // } on DioException catch (e) {
    //   return Left(Failure(message: e.message!));
    // }

    final data = returnFakeResponse();
    final dataMap = jsonDecode(data);
    final products = dataMap['mainSelections'];
    late String title;
    final List<Product> productsList = [];
    for (final fetchedProduct in products) {
      title = fetchedProduct['title'];
      productsList.add(Product(title: title));
    }
    return Right(productsList);

    // Return the list of products
  }
}

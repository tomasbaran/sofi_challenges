import 'package:altimetrik/core/failures/i_failure.dart';
import 'package:altimetrik/core/services/dependencies_locator.dart';
import 'package:altimetrik/features/products/domain/entities/product.dart';
import 'package:altimetrik/features/products/presentation/managers/sofi_products_managers.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';

class SofiProductsScreen extends StatefulWidget {
  const SofiProductsScreen({super.key});

  @override
  State<SofiProductsScreen> createState() => _SofiProductsScreenState();
}

final manager = locate<SofiProductsManager>();

class _SofiProductsScreenState extends State<SofiProductsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    manager.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sofi Products'),
      ),
      body: ValueListenableBuilder(
        valueListenable: manager.sofiProductsNotifier,
        builder: (context, dartz.Either<IFailure, List<Product>> products, _) {
          return products.fold(
            (failure) => Text(failure.message),
            (products) => ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ListTile(
                  title: Text(product.title),
                  // subtitle: Text(product.description),
                  // trailing: Text(product.price.toString()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

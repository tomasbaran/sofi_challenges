import 'package:altimetrik/core/services/dependencies_locator.dart';
import 'package:altimetrik/features/products/presentation/screens/sofi_products_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SofiProductsScreen(),
    );
  }
}

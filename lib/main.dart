import 'package:currency_calculate/currency_converter_material_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// types of widget
// 1.Stateless Widget
// 2.Statefull widget

// State

// 1.Material Design --> desigined by google
// 2.Cuportino Design --> designed by apple

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}

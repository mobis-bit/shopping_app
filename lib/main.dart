import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/models/product_Data.dart';
import 'package:shopping_app/widgets/app_bar_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductData>(
      create: (context) => ProductData(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF886988),
          scaffoldBackgroundColor: Color(0xFFE0E9E9),
        ),
        home: SilverTabView(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:what_to_buy/provider/specification_provider.dart';
import './screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: SpecificationProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Color(0xFF4DA9A3)),
        home: MainScreen(),
      ),
    );
  }
}

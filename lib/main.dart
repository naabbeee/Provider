import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/pro.dart';
import 'package:provider_project/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderOperation(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       
        home: MyPro()
      ),
    );
  }
}


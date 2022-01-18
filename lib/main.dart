import 'package:flutter/material.dart';
import 'package:flutter_unity_demo/unity_wrapper.dart';
import 'package:flutter_unity_demo/unity_wrapper_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<UnityWrapperProvider>(
        create: (context) => UnityWrapperProvider(),
        child: const UnityWrapper(),
      ),
    );
  }
}

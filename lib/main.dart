import 'package:e_commerce_app_provider/pages/home/home_page.dart';
import 'package:flutter/material.dart';

import 'authentication/signin.dart';
import 'package:firebase_core/firebase_core.dart';

void main(List<String> args) async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

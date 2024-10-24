import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app_setup/services/news_servic.dart';
import 'package:new_app_setup/views/home_views.dart';

void main() {
  // NewsServic(Dio()).getTopHedlines();
  // getHttp();
  runApp(const MyApp());
}

// final dio = Dio();

// void getHttp() async {
//   final response = await dio.get(
//       'https://newsapi.org/v2/everything?q=bitcoin&apiKey=063f7042469d44829b655672b610a8d0');
//   print(response);
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeViews(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:namer_app/provider/app_data_provider.dart';
import 'package:namer_app/screens/main_page.dart';
import 'package:namer_app/utils/style.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => AppDataProvider(),
      child: MaterialApp(
        title: 'Namer App',
        theme: AppStyle.appTheme,
        home:  MainPage(),
      ),
    );
  }
}


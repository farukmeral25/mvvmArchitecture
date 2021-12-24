import 'package:flutter/material.dart';
import 'package:flutter_mvvm_project/feature/home/view/home_view.dart';
import 'package:flutter_mvvm_project/feature/home/viewmodel/home_provider.dart';

import 'package:provider/provider.dart';
import 'core/init/injection_container.dart' as dependencyInjection;

void main() async {
  await dependencyInjection.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeProvider>(
          create: (_) => HomeProvider(),
        ),
      ],
      child: Consumer<HomeProvider>(
        builder: (BuildContext context, HomeProvider homeProvider, Widget? widget) {
          return MyApp();
        },
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVVM Deneme',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

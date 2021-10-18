import 'package:flutter/material.dart';
import 'package:flutter_mvvm_project/view/home_view.dart';
import 'package:flutter_mvvm_project/viewmodel/home_provider.dart';
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
      title: 'MVVM ARCHITECTURE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

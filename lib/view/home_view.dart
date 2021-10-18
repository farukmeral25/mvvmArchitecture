import 'package:flutter/material.dart';
import 'package:flutter_mvvm_project/viewmodel/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer(builder: (BuildContext context, HomeProvider homeProvider, Widget? widget) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text(homeProvider.todos[index].id.toString()),
            title: Text(homeProvider.todos[index].userId.toString()),
            subtitle: Text(homeProvider.todos[index].title.toString()),
            trailing: Text(homeProvider.todos[index].completed.toString()),
          );
        },
        itemCount: homeProvider.todos.length,
      );
    }));
  }
}

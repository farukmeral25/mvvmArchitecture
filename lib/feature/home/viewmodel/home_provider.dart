import 'package:flutter/material.dart';
import 'package:flutter_mvvm_project/feature/home/model/todos_model.dart';
import 'package:flutter_mvvm_project/feature/home/service/service_impl.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider() {
    fetchTodo();
  }

  List<Todo> todos = [];

  fetchTodo() async {
    todos = await ServiceImpl().fetchTodo();
    notifyListeners();
  }
}

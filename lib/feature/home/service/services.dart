import 'package:flutter_mvvm_project/feature/home/model/todos_model.dart';

abstract class Services {
  Future<List<Todo>> fetchTodo();
}

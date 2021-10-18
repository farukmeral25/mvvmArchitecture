import 'package:flutter_mvvm_project/model/todos_model.dart';

abstract class Services {
  Future<List<Todo>> fetchTodo();
}

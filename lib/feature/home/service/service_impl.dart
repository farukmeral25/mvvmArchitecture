import 'package:dio/dio.dart';
import 'package:flutter_mvvm_project/feature/home/model/todos_model.dart';
import 'package:flutter_mvvm_project/feature/home/service/services.dart';

class ServiceImpl extends Services {
  @override
  Future<List<Todo>> fetchTodo() async {
    var dio = Dio();
    final response = await dio.get('https://jsonplaceholder.typicode.com/todos');
    List<Todo> todos = (response.data as List).map((todo) => Todo.fromMap(todo)).toList();
    return todos;
  }
}

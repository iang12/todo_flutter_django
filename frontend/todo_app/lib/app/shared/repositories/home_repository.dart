import 'package:dio/dio.dart';
import 'package:todo_app/app/modules/home/models/todo_model.dart';
import 'package:todo_app/app/shared/constants.dart';

class HomeRepository {
  Dio dio;
  HomeRepository(this.dio);

  Future<List<TodoModel>> getTodos() async {
    final response = await dio.get(URL_API);
    return (response.data as List)
        .map((json) => TodoModel.fromJson(json))
        .toList();
  }

  Future addTodo(TodoModel model) async {
    final response = await dio.post('create/', data: model.toJson());
    print(response.data);
    return null;
  }

  Future deleteTodo(TodoModel model) async {
    Response response = await dio.delete('${model.id}/');
    print(response.data);
  }

  Future updateTodo(TodoModel model) async {
    final response = await dio.put('${model.id}/', data: model.toJson());
    print(response.data);
  }
  // Future addTodo({String title, String body}) async {
  //   final bodyData = {'name': title, 'body': body,'check'};
  //   final headers = {'contentType': 'application/json'};
  //   final response = await dio.post('create/',
  //       data: bodyData, options: Options(headers: headers));
  //   print(response.data);
  // }

}

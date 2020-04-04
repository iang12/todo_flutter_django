import 'package:mobx/mobx.dart';
import 'package:todo_app/app/modules/home/models/todo_model.dart';
import 'package:todo_app/app/shared/repositories/home_repository.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  HomeRepository homeRepository;
  @observable
  List<TodoModel> todoList;
  @observable
  @observable
  String title;
  @observable
  String content;
  @observable
  bool check = false;
  @action
  setTitle(String value) => title = value;

  @action
  setContent(String value) => content = value;

  @action
  setCheck(bool value) => check = !check;

  @action
  getData() async {
    todoList = await homeRepository.getTodos();
  }

  @action
  Future postCreate() async {
    try {
      await homeRepository
          .addTodo(TodoModel(title: title, body: content, check: check));
      getData();
    } catch (e) {}
  }

  @action
  Future deleteTodo(TodoModel model) async {
    try {
      await homeRepository.deleteTodo(model);
      todoList.remove(model);
      getData();
    } catch (e) {
      print(e);
    }
  }

  @action
  Future updateTodo({String id}) async {
    try {
      await homeRepository.updateTodo(TodoModel(id: int.parse(id),title: title, body: content, check: check));
      getData();
    } catch (e) {
      print(e);
    }
  }

  _HomeControllerBase(this.homeRepository) {
    getData();
  }
}

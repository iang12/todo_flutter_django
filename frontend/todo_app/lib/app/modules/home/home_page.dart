import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/app/modules/home/models/todo_model.dart';
import 'package:todo_app/app/modules/home/widgets/input_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Todo List Django"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  String titleDialog = '';
  //use 'controller' variable to access controller
  _dialog({String id, String title, String content, bool check}) {
    if (id == null) {
      titleDialog = 'Add New Todo';
    } else {
      titleDialog = 'Update Todo';
    }
    showDialog(
        context: context,
        child: AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Center(child: Text(titleDialog)),
          content: Container(
              padding: EdgeInsets.all(5),
              height: 250,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(children: <Widget>[
                InputWidget(
                  initialValue: title,
                  label: 'Title',
                  function: controller.setTitle,
                ),
                SizedBox(
                  height: 10,
                ),
                InputWidget(
                  initialValue: content,
                  label: 'Content',
                  function: controller.setContent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Complete?'),
                    Observer(builder: (_) {
                      return Checkbox(
                          value: controller.check,
                          onChanged: controller.setCheck);
                    }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      shape: StadiumBorder(),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel'),
                    ),
                    RaisedButton(
                      shape: StadiumBorder(),
                      onPressed: () {
                        if (id == null) {
                          controller.postCreate();
                          Navigator.pop(context);
                        } else {
                          controller.updateTodo(id: id);
                          Navigator.pop(context);
                        }
                      },
                      child: Text('Add'),
                    ),
                  ],
                )
              ])),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: RefreshIndicator(
          child: Observer(
            builder: (_) {
              var todos = controller.todoList;
              if (todos == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    leading: todos[index].check == true
                        ? Icon(
                            Icons.check_circle,
                            color: Colors.blueAccent,
                          )
                        : Icon(Icons.check_circle_outline),
                    title: Text(todos[index].title),
                    trailing: GestureDetector(
                      onTap: () async {
                        await controller.deleteTodo(todos[index]);
                      },
                      child: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                    onTap: () {
                      _dialog(
                          id: todos[index].id.toString(),
                          title: todos[index].title,
                          content: todos[index].body,
                          check: todos[index].check);
                    },
                  );
                },
              );
            },
          ),
          onRefresh: controller.getData),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _dialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

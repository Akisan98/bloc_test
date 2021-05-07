import 'package:bloc_test/blocs/show_singleton.dart';
import 'package:bloc_test/models/user.dart';
import 'package:flutter/material.dart';

class SecPage extends StatelessWidget {

  var bloc = ShowSingleton.instance.bloc;
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<List<User>>(
          stream: bloc.outUser,
          initialData: bloc.users,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index].name),
                  );
                }
              );
            }
            return Center(
              child: CircularProgressIndicator()
            );
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bloc.addUser(User('Nicholas$_counter', 12, 140.0));
          _counter++;
        }
      ),
    );
  }
}


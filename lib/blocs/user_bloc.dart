/* import 'dart:async';

import 'package:bloc_test/api/db_api.dart';
import 'package:bloc_test/models/user.dart';

import 'bloc_base.dart';

class UserBloc implements BlocBase {
  User _user;

  // Streams to handle the user
  StreamController<User> _userController = StreamController<User>.broadcast();
  Sink<User> get _inUser => _userController.sink;
  Stream<User> get outUser => _userController.stream;

  UserBloc() {
    init();
  }

  void init() async {
    _user = await api.getUser();
    _inUser.add(_user);
  }

  @override
  void dispose() {
    _userController.close();
  }

  void updateUser(User user) {
    _user = user;
    _inUser.add(_user);
  }

  void updateName(String name) {
    _user.name = name;
    _inUser.add(_user);
  }
}*/

import 'dart:async';

import 'package:bloc_test/models/user.dart';

import 'bloc_base.dart';

class UserBloc extends BlocBase {
  List<User> _users;
  List<User> users;

  // Streams to handle the user
  StreamController<List<User>> _userController = StreamController<List<User>>.broadcast();
  Sink<List<User>> get _inUser => _userController.sink;
  Stream<List<User>> get outUser => _userController.stream;


  UserBloc() {
    init();
  }

  void init() {
    _users = [User('Nicholas', 12, 140.0), User('Nicholas', 12, 140.0), User('Nicholas', 12, 140.0)];
    _inUser.add(_users);
    users = _users;
  }

  @override
  void dispose() {
    _userController.close();
  }

  void addUser(User user) {
    _users.add(user);// = [User('Nicholas', 12, 140.0), User('Nicholas', 12, 140.0), User('Nicholas', 12, 140.0), User('Nicholas4', 12, 140.0)];
    _inUser.add(_users);
    users = _users;
  }

  void deleteUser() {
    _users.removeAt(0);// = [User('Nicholas', 12, 140.0), User('Nicholas', 12, 140.0), User('Nicholas', 12, 140.0), User('Nicholas4', 12, 140.0)];
    _inUser.add(_users);
    users = _users;
  }

  /*

  void updateUser(User user) {
    _users = user;
    _inUser.add(_users);
  }

  void updateName(String name) {
    _users.name = name;
    _inUser.add(_us_userser);
  }

  */
}
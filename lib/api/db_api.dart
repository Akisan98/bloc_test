import 'package:bloc_test/models/user.dart';

class DbApi {
  Future<User> getUser() async {
    await Future.delayed(Duration(seconds: 3));
    User _user = User('Nicholas', 12, 140.0);
    return _user;
  }
}

DbApi api = DbApi();
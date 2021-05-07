import 'user_bloc.dart';

class ShowSingleton {
  
  // Singleton class
  ShowSingleton._privateConstructor();
  static final ShowSingleton instance = ShowSingleton._privateConstructor();

  static UserBloc _bloc;
  UserBloc get bloc {
    if (_bloc != null) return _bloc;
    // lazily instantiate the db the first time it is accessed
    _bloc = UserBloc();
    return _bloc;
  }
}

// Can be future
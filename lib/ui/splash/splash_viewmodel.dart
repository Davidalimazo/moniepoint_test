import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moniepoint_test/model/user_model.dart';


// ViewModel
class UserViewModel extends StateNotifier<User> {
  UserViewModel() : super(User(name: '', age: 0));

  void updateUser(String name, int age) {
    state = User(name: name, age: age);
  }
}


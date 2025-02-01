import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewModel extends StateNotifier<int> {
  HomeViewModel(super.state);

  // Function to update the current index
  void setCurrentIndex({required int index}) {
    state = index;  
  }
}
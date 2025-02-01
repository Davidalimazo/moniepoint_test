import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moniepoint_test/ui/home/home_viewmodel.dart';

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, int>((ref) => HomeViewModel(0));

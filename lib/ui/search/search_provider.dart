import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moniepoint_test/ui/search/search_viewmodel.dart';

final searchViewModelProvider =
    StateNotifierProvider<HomeViewModel, int>((ref) => HomeViewModel(0));

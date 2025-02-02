import 'package:moniepoint_test/ui/search/search_viewmodel.dart';
import 'package:riverpod/riverpod.dart';


final homeViewProvider = StateNotifierProvider<HomeViewModel, int>((ref) => HomeViewModel(0));

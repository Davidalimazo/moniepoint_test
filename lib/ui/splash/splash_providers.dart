// Riverpod Provider for the ViewModel
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moniepoint_test/ui/splash/splash_viewmodel.dart';

final splashViewModelProvider = Provider<SplashViewModel>((ref) {
  return SplashViewModel();
});

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubit_test_state.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(TestInitial());

  void signUp(String email, String password) {
    if (_isValidEmail(email) && _isValidPassword(password)) {
      final String msgsuccess = 'Sign-up successful!';
      emit(SignUpSuccess(successMessage: msgsuccess));
    } else {
      final String msgfailure = 'Invalid email or password';
      emit(SignUpFailure(errorMessage: msgfailure));
    }
  }
  bool _isValidEmail(String email) {

    final allowedDomains = ['hotmail.com', 'gmail.com', 'yahoo.com'];
    for (var domain in allowedDomains) {
      if (email.endsWith('@$domain')) {
        return true;
      }
    }
    return false;
  }
  bool _isValidPassword(String password) {
    return password.length >= 6;
  }
}

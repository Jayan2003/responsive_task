part of 'cubit_test_cubit.dart';

@immutable
sealed class TestState {}

final class TestInitial extends TestState {}
final class SignUpSuccess extends TestState{
   final String successMessage;

  SignUpSuccess({required this.successMessage});


}
final class SignUpFailure extends TestState{
  final String errorMessage;

  SignUpFailure({required this.errorMessage});
}


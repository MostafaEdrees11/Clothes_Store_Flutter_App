part of 'auth_cubit.dart';

abstract class AuthState {}

final class AuthInitial extends AuthState {}

final class loginLoading extends AuthState {}
final class loginSuccess extends AuthState {}

final class loginFailure extends AuthState {
  final String msg;

  loginFailure(this.msg);
}

final class signUpLoading extends AuthState {}
final class signUpSuccess extends AuthState {}
final class signUpFailure extends AuthState {
  final String msg;

  signUpFailure(this.msg);
}

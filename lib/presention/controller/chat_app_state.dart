part of 'chat_app_cubit.dart';

@immutable
abstract class ChatAppState {}

final class ChatAppInitial extends ChatAppState {}

final class IconVisable extends ChatAppState {}

final class SignupLoading extends ChatAppState {}

final class SignupSuccess extends ChatAppState {}

final class SignupError extends ChatAppState {
  final String error;

  SignupError({required this.error});
}

final class SignInLoading extends ChatAppState {}

final class SigninSuccess extends ChatAppState {}

final class SigninError extends ChatAppState {
  final String error;

  SigninError({required this.error});
}

final class CreateSuccess extends ChatAppState {}

final class CreateError extends ChatAppState {
  final String error;

  CreateError({required this.error});
}

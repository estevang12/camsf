import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/app_user.dart';
import '../../auth_repository.dart';

abstract class AuthState {}
class AuthInitial extends AuthState {}
class Authenticated extends AuthState {
  final AppUser user;
  Authenticated(this.user);
}
class Unauthenticated extends AuthState {}

class AuthBloc extends Cubit<AuthState> {
  final AuthRepository _repository;
  AuthBloc(this._repository) : super(AuthInitial()) {
    _repository.user.listen((user) {
      if (user != null) {
        emit(Authenticated(user));
      } else {
        emit(Unauthenticated());
      }
    });
  }

  Future<void> signOut() => _repository.signOut();
}

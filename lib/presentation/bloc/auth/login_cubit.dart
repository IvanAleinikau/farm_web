import 'package:farm_web/data/auth_repository.dart';
import 'package:farm_web/presentation/bloc/auth/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class LoginCubit extends Cubit<AuthState> {
  LoginCubit() : super(const AuthState());

  final _repository = GetIt.instance<AuthRepository>();

  void onSingIn({required String email, required String password}) async {
    emit(state.copyWith(loading: true));
    final result = await _repository.signIn(email: email, password: password);
    if (result == 'welcome') {
      emit(state.copyWith(loading: false, successfully: true));
    } else {
      emit(state.copyWith(loading: false));
    }
    emit(state.copyWith(successfully: false));
  }
}

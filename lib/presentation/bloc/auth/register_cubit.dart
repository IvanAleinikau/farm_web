import 'package:farm_web/data/auth_repository.dart';
import 'package:farm_web/presentation/bloc/auth/auth_state.dart';
import 'package:farm_web/presentation/model/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class RegisterCubit extends Cubit<AuthState> {
  RegisterCubit() : super(const AuthState());

  final _repository = GetIt.instance<AuthRepository>();

  void onRegister({required CustomUser user}) async {
    emit(state.copyWith(loading: true));
    final result = await _repository.createAccount(user: user);
    if (result == 'accountCreated') {
      Future.delayed(const Duration(seconds: 3), () {
        emit(state.copyWith(loading: false, successfully: true));
      });
    } else {
      emit(state.copyWith(loading: false));
    }
    emit(state.copyWith(successfully: false));
  }
}

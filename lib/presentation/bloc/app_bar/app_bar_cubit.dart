import 'package:farm_web/presentation/bloc/app_bar/app_bar_state.dart';
import 'package:farm_web/presentation/model/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarCubit extends Cubit<AppBarState> {
  final User? _user = FirebaseAuth.instance.currentUser;

  AppBarCubit() : super(const AppBarState()) {
    onInit();
  }

  void onInit() async {
    if (_user == null) {
      _user?.reload();
      Future.delayed(const Duration(seconds: 1), () {
        onInit();
      });
    } else {
      final CustomUser customUser = CustomUser(
        email: _user!.email!,
        password: '',
        name: _user!.displayName!,
        position: _user!.photoURL!,
      );
      emit(state.copyWith(customUser: customUser));
    }
  }
}

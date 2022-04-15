import 'package:farm_web/presentation/bloc/navigation/navigation_state.dart';
import 'package:farm_web/presentation/page/main/menu/type_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState()) {
    onInit();
  }

  void onInit() {}

  void onMenuItemChanged(TypePage typePage) {
    // emit(state.copyWith(isLoading: true));
    emit(state.copyWith(activePage: typePage));
  }
}

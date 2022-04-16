import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.freezed.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState({
    @Default(TypePage.home()) TypePage activePage,
    @Default(false) bool isLoading,
  }) = _NavigationState;
}

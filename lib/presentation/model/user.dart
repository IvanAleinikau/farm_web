import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class CustomUser with _$CustomUser {
  const factory CustomUser({
    required String email,
    required String password,
    required String name,
    required String position,
  }) = _CustomUser;
}

const CustomUser emptyUser = CustomUser(
  email: '',
  password: '',
  name: '',
  position: '',
);

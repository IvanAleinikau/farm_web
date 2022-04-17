import 'package:auto_route/auto_route.dart';
import 'package:farm_web/presentation/bloc/auth/auth_state.dart';
import 'package:farm_web/presentation/bloc/auth/register_cubit.dart';
import 'package:farm_web/presentation/model/user.dart';
import 'package:farm_web/presentation/page/auth/widgets/auth_button.dart';
import 'package:farm_web/presentation/page/auth/widgets/auth_input.dart';
import 'package:farm_web/presentation/route/router.gr.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _position = TextEditingController();

  late RegisterCubit _cubit;

  final ValueNotifier<bool> _showLoading = ValueNotifier<bool>(false);

  @override
  void initState() {
    _cubit = RegisterCubit();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _name.dispose();
    _position.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: BlocConsumer<RegisterCubit, AuthState>(
        bloc: _cubit,
        listener: (context, state) {
          if (state.successfully) {
            _email.clear();
            _password.clear();
            _name.clear();
            _position.clear();
            context.router.push(const HomeRoute());
          }
          if (state.loading) _showLoading.value = true;
          if (!state.loading) _showLoading.value = false;
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder(
                valueListenable: _showLoading,
                builder: (context, bool isLoading, child) {
                  return isLoading
                      ? const LinearProgressIndicator(
                          color: FarmColors.primary,
                        )
                      : Container();
                },
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 32),
                        Text(
                          'Регистрация',
                          style: FarmTextStyles.roboto32w400.copyWith(fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 32),
                        AuthInput(
                          hintText: 'E-mail',
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          controller: _email,
                          obscureText: false,
                        ),
                        const SizedBox(height: 28),
                        AuthInput(
                          hintText: 'Пароль',
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          controller: _password,
                          obscureText: true,
                        ),
                        const SizedBox(height: 28),
                        AuthInput(
                          hintText: 'Имя Фамилия',
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          controller: _name,
                          obscureText: false,
                        ),
                        const SizedBox(height: 28),
                        AuthInput(
                          hintText: 'Должность',
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          controller: _position,
                          obscureText: false,
                        ),
                        const SizedBox(height: 28),
                        AuthButton(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          title: 'Зарегистрироваться',
                          onTap: () => _cubit.onRegister(
                            user: CustomUser(
                              email: _email.text,
                              password: _password.text,
                              name: _name.text,
                              position: _position.text,
                            ),
                          ),
                          isLight: false,
                        ),
                        const SizedBox(height: 55),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

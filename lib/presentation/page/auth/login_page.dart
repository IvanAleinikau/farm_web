import 'package:auto_route/auto_route.dart';
import 'package:farm_web/presentation/bloc/auth/auth_state.dart';
import 'package:farm_web/presentation/bloc/auth/login_cubit.dart';
import 'package:farm_web/presentation/page/auth/widgets/auth_button.dart';
import 'package:farm_web/presentation/page/auth/widgets/auth_input.dart';
import 'package:farm_web/presentation/route/router.gr.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  late LoginCubit _cubit;

  final ValueNotifier<bool> _showLoading = ValueNotifier<bool>(false);

  @override
  void initState() {
    _cubit = LoginCubit();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: BlocConsumer<LoginCubit, AuthState>(
        bloc: _cubit,
        listener: (context, state) {
          if (state.successfully) {
            _email.clear();
            _password.clear();
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
                child: Center(
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
                          'Вход',
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
                        AuthButton(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          title: 'Войти',
                          onTap: () => _cubit.onSingIn(
                            email: _email.text,
                            password: _password.text,
                          ),
                          isLight: false,
                        ),
                        const SizedBox(height: 15),
                        AuthButton(
                          padding: const EdgeInsets.symmetric(horizontal: 45),
                          title: 'Зарегистрироваться',
                          onTap: () => context.router.navigate(const RegisterRoute()),
                          isLight: true,
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

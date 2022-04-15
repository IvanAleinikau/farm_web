import 'package:farm_web/common/constants/ui_constants.dart';
import 'package:farm_web/presentation/bloc/navigation/navigation_cubit.dart';
import 'package:farm_web/presentation/page/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(
          create: (context) => NavigationCubit(),
        ),
      ],
      child: MaterialApp(
        scrollBehavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        title: APP_NAME,
        home: const MainPage(),
      ),
    );
  }
}

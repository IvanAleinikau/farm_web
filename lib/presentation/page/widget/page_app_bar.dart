import 'package:farm_web/common/widgets/app_bar/sear%D1%81h_form.dart';
import 'package:farm_web/common/widgets/farm_text.dart';
import 'package:farm_web/presentation/bloc/app_bar/app_bar_cubit.dart';
import 'package:farm_web/presentation/bloc/app_bar/app_bar_state.dart';

import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_icons.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageAppBar extends StatefulWidget {
  const PageAppBar({Key? key}) : super(key: key);

  @override
  State<PageAppBar> createState() => _PageAppBarState();
}

class _PageAppBarState extends State<PageAppBar> {
  late AppBarCubit _cubit;

  @override
  void initState() {
    _cubit = AppBarCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: FarmColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 40),
          const Expanded(
            child: SearchForm(),
          ),
          const SizedBox(width: 25),
          InkWell(
            onTap: () {},
            child: SizedBox(
              child: Image.asset(
                FarmIcons.calendarIcon,
                height: 32,
                width: 32,
              ),
            ),
          ),
          const SizedBox(width: 25),
          Container(
            width: 1,
            color: const Color(0xffE0E0E0),
          ),
          const SizedBox(width: 25),
          Container(
            height: 52,
            width: 52,
            decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          ),
          const SizedBox(width: 18),
          BlocBuilder<AppBarCubit, AppBarState>(
            bloc: _cubit,
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FarmText(
                    '${state.customUser.name} ',
                    style: FarmTextStyles.roboto16w400.copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 8),
                  FarmText(
                    '${state.customUser.position} ',
                    style: FarmTextStyles.roboto14w400.copyWith(color: Colors.black),
                  ),
                ],
              );
            },
          ),
          const SizedBox(width: 70),
        ],
      ),
    );
  }
}

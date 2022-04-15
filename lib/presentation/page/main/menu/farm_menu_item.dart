import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_icons.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class FarmMenuItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final bool isActive;
  final VoidCallback onTap;

  const FarmMenuItem({
    Key? key,
    required this.title,
    required this.iconPath,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            height: 24,
            width: 8,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.horizontal(right: Radius.circular(4)),
              color: isActive ? FarmColors.white : FarmColors.menuGrey,
            ),
          ),
          const SizedBox(width: 20),
          Image.asset(
            iconPath,
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: FarmTextStyles.roboto20w400.copyWith(
              fontWeight: FontWeight.w700,
              color: isActive ? FarmColors.white : FarmColors.menuGrey,
            ),
          ),
        ],
      ),
    );
  }
}

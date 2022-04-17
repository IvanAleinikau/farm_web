import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry padding;
  final VoidCallback onTap;
  final bool isLight;

  const AuthButton({
    Key? key,
    required this.padding,
    required this.title,
    required this.onTap,
    required this.isLight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: isLight ? Colors.white : FarmColors.primary,
            fixedSize: const Size(double.maxFinite, 52),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            side: const BorderSide(color: FarmColors.primary),
          ),
          onPressed: onTap,
          child: Text(
            title,
            style:
                FarmTextStyles.roboto20w400.copyWith(color: isLight ? Colors.black : Colors.white),
          ),
        ),
      ),
    );
  }
}

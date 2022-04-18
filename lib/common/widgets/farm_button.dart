import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:flutter/material.dart';

class FarmButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  const FarmButton({
    Key? key,
    required this.child,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: FarmColors.primary,
          fixedSize: const Size(double.maxFinite, 52),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onTap,
        child: child,
      ),
    );
  }
}

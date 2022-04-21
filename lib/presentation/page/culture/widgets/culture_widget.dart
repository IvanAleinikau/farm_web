import 'package:auto_route/auto_route.dart';
import 'package:farm_web/presentation/route/router.gr.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class CultureWidget extends StatefulWidget {
  const CultureWidget({Key? key}) : super(key: key);

  @override
  State<CultureWidget> createState() => _CultureWidgetState();
}

class _CultureWidgetState extends State<CultureWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () => context.router.navigate(const CultureDetailedRoute()),
      child: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.fromLTRB(16, 8, 9, 27),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color(0xFFE0E0E0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Морковь, Шантане 2461',
              style: FarmTextStyles.roboto20w400.copyWith(
                fontWeight: FontWeight.w700,
                color: FarmColors.primary,
              ),
            ),
            const SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Text(
                    'Засаженная область',
                    style: FarmTextStyles.roboto14w400,
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: '20 ',
                    style: FarmTextStyles.roboto32w400,
                    children: [
                      TextSpan(
                        text: 'ар',
                        style: FarmTextStyles.roboto20w400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Text(
                    'Расчётный объём урожая',
                    style: FarmTextStyles.roboto14w400,
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: '17 ',
                    style: FarmTextStyles.roboto32w400,
                    children: [
                      TextSpan(
                        text: 'т',
                        style: FarmTextStyles.roboto20w400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 6),
                  child: Text(
                    'Собрано',
                    style: FarmTextStyles.roboto14w400,
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: '35 ',
                    style: FarmTextStyles.roboto32w400,
                    children: [
                      TextSpan(
                        text: '%',
                        style: FarmTextStyles.roboto20w400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

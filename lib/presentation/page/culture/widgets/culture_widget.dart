import 'package:auto_route/auto_route.dart';
import 'package:farm_web/presentation/bloc/culture_detailed/culture_detailed_cubit.dart';
import 'package:farm_web/presentation/model/culture.dart';
import 'package:farm_web/presentation/route/router.gr.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';

class CultureWidget extends StatefulWidget {
  final Culture culture;

  const CultureWidget({
    Key? key,
    required this.culture,
  }) : super(key: key);

  @override
  State<CultureWidget> createState() => _CultureWidgetState();
}

class _CultureWidgetState extends State<CultureWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () =>
          context.router.push(CultureDetailedRoute(cubit: CultureDetailedCubit(widget.culture))),
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
              widget.culture.cultureName,
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
                  text: TextSpan(
                    text: '${widget.culture.plantedArea} ',
                    style: FarmTextStyles.roboto32w400,
                    children: const [
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
                  text: TextSpan(
                    text: '${widget.culture.estimatedYield * widget.culture.plantedArea} ',
                    style: FarmTextStyles.roboto32w400,
                    children: const [
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
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: '${widget.culture.collectedInPercentage.toStringAsFixed(2)} ',
                    style: FarmTextStyles.roboto32w400,
                    children: const [
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

import 'package:auto_route/auto_route.dart';
import 'package:farm_web/common/widgets/farm_button.dart';
import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/page/culture/widgets/culture_widget.dart';
import 'package:farm_web/presentation/page/culture/widgets/table_footer.dart';
import 'package:farm_web/presentation/page/culture/widgets/table_header.dart';
import 'package:farm_web/presentation/page/culture/widgets/table_item.dart';
import 'package:farm_web/presentation/page/home/home_page.dart';
import 'package:farm_web/presentation/page/widget/page_body.dart';
import 'package:farm_web/presentation/route/router.gr.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_icons.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CultureDetailed extends StatefulWidget {
  const CultureDetailed({Key? key}) : super(key: key);

  @override
  State<CultureDetailed> createState() => _CultureDetailedState();
}

class _CultureDetailedState extends State<CultureDetailed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageBody(
        typePage: const TypePage.culture(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22, left: 40, bottom: 14),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => context.router.push(const CultureRoute()),
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        FarmIcons.backIcon,
                        height: 36,
                        width: 36,
                      ),
                    ),
                    Text(
                      'Морковь, Шантане 2461',
                      style: FarmTextStyles.roboto32w400.copyWith(color: FarmColors.primary),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: SizedBox(
                        height: 52,
                        width: 200,
                        child: FarmButton(
                          child: const Text(
                            'Изменить',
                            style: FarmTextStyles.roboto20w400,
                          ),
                          onTap: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const IgnorePointer(
                            child: CultureWidget(),
                          ),
                          SizedBox(
                            height: 270,
                            child: Stack(
                              children: [
                                SfCircularChart(
                                  margin: EdgeInsets.zero,
                                  legend: Legend(isVisible: true),
                                  series: <CircularSeries>[
                                    DoughnutSeries<VolumeData, String>(
                                      dataSource: [
                                        VolumeData('Отходы', 1, const Color(0xff732CCE)),
                                        VolumeData('Собрано', 6, const Color(0xffF58444)),
                                      ],
                                      pointColorMapper: (VolumeData data, _) => data.color,
                                      xValueMapper: (VolumeData data, _) =>
                                          '${data.x}  ${data.y} т',
                                      yValueMapper: (VolumeData data, _) => data.y,
                                    )
                                  ],
                                ),
                                Align(
                                  alignment: const Alignment(-0.42, 0),
                                  child: Text(
                                    '7 т',
                                    style: FarmTextStyles.roboto14w400.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFE0E0E0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Производственные расходы',
                                style: FarmTextStyles.roboto20w400.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: FarmColors.primary,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const TableHeader(),
                              const SizedBox(height: 4),
                              const TableItem(
                                firstAmount: 40,
                                title: 'Семена',
                                secondAmount: 140,
                                color: Color(0x3306673E),
                              ),
                              const TableItem(
                                firstAmount: 40,
                                title: 'Удобрения',
                                secondAmount: 140,
                              ),
                              const TableItem(
                                firstAmount: 40,
                                title: 'Гербициды',
                                secondAmount: 140,
                                color: Color(0x3306673E),
                              ),
                              const TableItem(
                                firstAmount: 40,
                                title: 'Инсектициды',
                                secondAmount: 140,
                              ),
                              const TableItem(
                                firstAmount: 40,
                                title: 'Адъювант',
                                secondAmount: 140,
                                color: Color(0x3306673E),
                              ),
                              const TableItem(
                                firstAmount: 0,
                                title: 'Другое',
                                secondAmount: 0,
                              ),
                              Container(
                                height: 1,
                                color: const Color(0xFFE0E0E0),
                              ),
                              const TableFooter(
                                title: 'Сумма',
                                firstAmount: 200,
                                secondAmount: 500,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

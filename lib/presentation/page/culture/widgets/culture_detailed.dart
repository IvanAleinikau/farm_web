import 'package:auto_route/auto_route.dart';
import 'package:farm_web/common/widgets/farm_button.dart';
import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/bloc/culture_detailed/culture_detailed_cubit.dart';
import 'package:farm_web/presentation/bloc/culture_detailed/culture_detailed_state.dart';
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
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CultureDetailed extends StatefulWidget {
  final CultureDetailedCubit cubit;

  const CultureDetailed({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  State<CultureDetailed> createState() => _CultureDetailedState();
}

class _CultureDetailedState extends State<CultureDetailed> {
  final ValueNotifier<bool> _isEdit = ValueNotifier<bool>(false);

  final TextEditingController _collected = TextEditingController();
  final TextEditingController _waste = TextEditingController();
  final TextEditingController _seeds = TextEditingController();
  final TextEditingController _fertilizer = TextEditingController();
  final TextEditingController _herbicides = TextEditingController();
  final TextEditingController _insecticides = TextEditingController();
  final TextEditingController _adjuvant = TextEditingController();
  final TextEditingController _other = TextEditingController();

  @override
  void initState() {
    _collected.text = widget.cubit.culture.collected.toString();
    _waste.text = widget.cubit.culture.waste.toString();
    _seeds.text = widget.cubit.culture.currentSeeds.toString();
    _fertilizer.text = widget.cubit.culture.currentFertilizers.toString();
    _herbicides.text = widget.cubit.culture.currentHerbicides.toString();
    _insecticides.text = widget.cubit.culture.currentInsecticides.toString();
    _adjuvant.text = widget.cubit.culture.currentAdjuvant.toString();
    _other.text = widget.cubit.culture.currentOther.toString();
    super.initState();
  }

  @override
  void dispose() {
    _collected.dispose();
    _waste.dispose();
    _seeds.dispose();
    _fertilizer.dispose();
    _herbicides.dispose();
    _insecticides.dispose();
    _adjuvant.dispose();
    _other.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CultureDetailedCubit, CultureDetailedState>(
      bloc: widget.cubit,
      listener: (context, state) {
        if (state.cultureUpdated) {
          _isEdit.value = false;
        }
      },
      builder: (context, state) {
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
                          state.culture.cultureName,
                          style: FarmTextStyles.roboto32w400.copyWith(color: FarmColors.primary),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: SizedBox(
                            height: 52,
                            width: 200,
                            child: ValueListenableBuilder(
                              valueListenable: _isEdit,
                              builder: (context, bool isEdit, child) {
                                return isEdit
                                    ? FarmButton(
                                        child: const Text(
                                          'Сохранить',
                                          style: FarmTextStyles.roboto20w400,
                                        ),
                                        onTap: () {
                                          widget.cubit.onCultureUpdate(
                                            widget.cubit.culture.copyWith(
                                              currentSeeds: _parser(_seeds.text),
                                              currentFertilizers: _parser(_fertilizer.text),
                                              currentHerbicides: _parser(_herbicides.text),
                                              currentInsecticides: _parser(_insecticides.text),
                                              currentAdjuvant: _parser(_adjuvant.text),
                                              currentOther: _parser(_other.text),
                                              collected: _parser(_collected.text),
                                              waste: _parser(_waste.text),
                                              collectedInPercentage: _collectedInPercentage(
                                                amount:
                                                    _parser(_collected.text) + _parser(_waste.text),
                                              ),
                                            ),
                                          );
                                        },
                                      )
                                    : FarmButton(
                                        child: const Text(
                                          'Изменить',
                                          style: FarmTextStyles.roboto20w400,
                                        ),
                                        onTap: () {
                                          _isEdit.value = true;
                                        },
                                      );
                              },
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
                              IgnorePointer(
                                child: CultureWidget(
                                  culture: state.culture,
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 152,
                                    width: 152,
                                    child: Stack(
                                      children: [
                                        SfCircularChart(
                                          margin: EdgeInsets.zero,
                                          series: <CircularSeries>[
                                            DoughnutSeries<VolumeData, String>(
                                              dataSource: [
                                                VolumeData(
                                                  'Отходы',
                                                  state.culture.waste + 0.00001,
                                                  const Color(0xff732CCE),
                                                ),
                                                VolumeData(
                                                  'Собрано',
                                                  state.culture.collected + 0.00001,
                                                  const Color(0xffF58444),
                                                ),
                                              ],
                                              pointColorMapper: (VolumeData data, _) => data.color,
                                              xValueMapper: (VolumeData data, _) => ' ',
                                              yValueMapper: (VolumeData data, _) => data.y,
                                              enableTooltip: false,
                                            )
                                          ],
                                        ),
                                        Align(
                                          alignment: const Alignment(0, 0),
                                          child: Text(
                                            '${state.culture.waste + state.culture.collected} т',
                                            style: FarmTextStyles.roboto14w400.copyWith(
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: const Color(0xffF58444),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            const Text(
                                              'Собрано',
                                              style: FarmTextStyles.roboto16w400,
                                            ),
                                            const SizedBox(width: 8),
                                            ValueListenableBuilder(
                                              valueListenable: _isEdit,
                                              builder: (context, bool isEdit, child) {
                                                return isEdit
                                                    ? SizedBox(
                                                        height: 25,
                                                        width: 35,
                                                        child: TextFormField(
                                                          controller: _collected,
                                                          cursorColor: Colors.black,
                                                          decoration: InputDecoration(
                                                            contentPadding:
                                                                const EdgeInsets.only(left: 6),
                                                            border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(8.0),
                                                              borderSide: const BorderSide(
                                                                  color: Color(0xFFB1B1B1)),
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(8.0),
                                                              borderSide: const BorderSide(
                                                                  color: Colors.black),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    : Text(
                                                        '${state.culture.collected}',
                                                        style: FarmTextStyles.roboto16w400,
                                                      );
                                              },
                                            ),
                                            const Text(
                                              ' т',
                                              style: FarmTextStyles.roboto16w400,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 25),
                                        Row(
                                          children: [
                                            Container(
                                              height: 16,
                                              width: 16,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: const Color(0xff732CCE),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            const Text(
                                              'Отходы',
                                              style: FarmTextStyles.roboto16w400,
                                            ),
                                            const SizedBox(width: 8),
                                            ValueListenableBuilder(
                                              valueListenable: _isEdit,
                                              builder: (context, bool isEdit, child) {
                                                return isEdit
                                                    ? SizedBox(
                                                        height: 25,
                                                        width: 35,
                                                        child: TextFormField(
                                                          controller: _waste,
                                                          cursorColor: Colors.black,
                                                          decoration: InputDecoration(
                                                            contentPadding:
                                                                const EdgeInsets.only(left: 6),
                                                            border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(8.0),
                                                              borderSide: const BorderSide(
                                                                  color: Color(0xFFB1B1B1)),
                                                            ),
                                                            focusedBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(8.0),
                                                              borderSide: const BorderSide(
                                                                  color: Colors.black),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    : Text(
                                                        '${state.culture.waste}',
                                                        style: FarmTextStyles.roboto16w400,
                                                      );
                                              },
                                            ),
                                            const Text(
                                              ' т',
                                              style: FarmTextStyles.roboto16w400,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ValueListenableBuilder(
                            valueListenable: _isEdit,
                            builder: (context, bool isEdit, child) {
                              return Container(
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
                                      TableItem(
                                        controller: _seeds,
                                        firstAmount: state.culture.currentSeeds,
                                        title: 'Семена',
                                        secondAmount: state.culture.budgetSeeds,
                                        color: const Color(0x3306673E),
                                        isEdit: isEdit,
                                      ),
                                      TableItem(
                                        controller: _fertilizer,
                                        firstAmount: state.culture.currentFertilizers,
                                        title: 'Удобрения',
                                        secondAmount: state.culture.budgetFertilizers,
                                        isEdit: isEdit,
                                      ),
                                      TableItem(
                                        controller: _herbicides,
                                        firstAmount: state.culture.currentHerbicides,
                                        title: 'Гербициды',
                                        secondAmount: state.culture.budgetHerbicides,
                                        color: const Color(0x3306673E),
                                        isEdit: isEdit,
                                      ),
                                      TableItem(
                                        controller: _insecticides,
                                        firstAmount: state.culture.currentInsecticides,
                                        title: 'Инсектициды',
                                        secondAmount: state.culture.budgetInsecticides,
                                        isEdit: isEdit,
                                      ),
                                      TableItem(
                                        controller: _adjuvant,
                                        firstAmount: state.culture.currentAdjuvant,
                                        title: 'Адъювант',
                                        secondAmount: state.culture.budgetAdjuvant,
                                        color: const Color(0x3306673E),
                                        isEdit: isEdit,
                                      ),
                                      TableItem(
                                        controller: _other,
                                        firstAmount: state.culture.currentOther,
                                        title: 'Другое',
                                        secondAmount: state.culture.budgetOther,
                                        isEdit: isEdit,
                                      ),
                                      Container(
                                        height: 1,
                                        color: const Color(0xFFE0E0E0),
                                      ),
                                      TableFooter(
                                        title: 'Сумма',
                                        firstAmount: state.culture.currentOther +
                                            state.culture.currentAdjuvant +
                                            state.culture.currentInsecticides +
                                            state.culture.currentHerbicides +
                                            state.culture.currentFertilizers +
                                            state.culture.currentSeeds,
                                        secondAmount: state.culture.budgetOther +
                                            state.culture.budgetAdjuvant +
                                            state.culture.budgetInsecticides +
                                            state.culture.budgetHerbicides +
                                            state.culture.budgetFertilizers +
                                            state.culture.budgetSeeds,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
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
      },
    );
  }

  double _parser(String value) {
    if (value.isEmpty) {
      return 0;
    } else {
      return double.parse(value);
    }
  }

  double _collectedInPercentage({required double amount}) {
    if (amount == 0) {
      return 0;
    } else {
      return (amount * 100) /
          (widget.cubit.culture.estimatedYield * widget.cubit.culture.plantedArea);
    }
  }
}

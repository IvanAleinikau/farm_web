import 'package:farm_web/common/widgets/farm_button.dart';
import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/bloc/culture/culture_cubit.dart';
import 'package:farm_web/presentation/bloc/culture/culture_state.dart';
import 'package:farm_web/presentation/model/culture.dart';
import 'package:farm_web/presentation/page/seeding_plan/widgets/seeding_plan_table_item.dart';
import 'package:farm_web/presentation/page/seeding_plan/widgets/seeding_table_column_with_input.dart';
import 'package:farm_web/presentation/page/seeding_plan/widgets/seeding_table_empty_column.dart';
import 'package:farm_web/presentation/page/seeding_plan/widgets/seeding_table_footer.dart';
import 'package:farm_web/presentation/page/seeding_plan/widgets/seeding_table_header.dart';
import 'package:farm_web/presentation/page/widget/page_body.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeedingPlanPage extends StatefulWidget {
  const SeedingPlanPage({Key? key}) : super(key: key);

  @override
  State<SeedingPlanPage> createState() => _SeedingPlanPageState();
}

class _SeedingPlanPageState extends State<SeedingPlanPage> {
  final TextEditingController _culture = TextEditingController();
  final TextEditingController _fieldArea = TextEditingController();
  final TextEditingController _yield = TextEditingController();
  final TextEditingController _estimatedCost = TextEditingController();
  final TextEditingController _profit = TextEditingController();
  final TextEditingController _seeds = TextEditingController();
  final TextEditingController _fertilizers = TextEditingController();
  final TextEditingController _herbicides = TextEditingController();
  final TextEditingController _insecticides = TextEditingController();
  final TextEditingController _adjuvants = TextEditingController();
  final TextEditingController _other = TextEditingController();

  final ValueNotifier<bool> _isCreate = ValueNotifier<bool>(false);

  late CultureCubit _cubit;

  @override
  void initState() {
    _cubit = CultureCubit();
    super.initState();
  }

  @override
  void dispose() {
    _other.dispose();
    _adjuvants.dispose();
    _insecticides.dispose();
    _herbicides.dispose();
    _fertilizers.dispose();
    _yield.dispose();
    _culture.dispose();
    _fieldArea.dispose();
    _estimatedCost.dispose();
    _profit.dispose();
    _seeds.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CultureCubit, CultureState>(
      bloc: _cubit,
      listener: (context, state) {
        if (state.cultureCreated) {
          _other.clear();
          _adjuvants.clear();
          _insecticides.clear();
          _herbicides.clear();
          _fertilizers.clear();
          _yield.clear();
          _culture.clear();
          _fieldArea.clear();
          _estimatedCost.clear();
          _profit.clear();
          _seeds.clear();
          _isCreate.value = false;
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: PageBody(
            typePage: const TypePage.seedingPlan(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SingleChildScrollView(
                physics: ScrollPhysics(),
                controller: ScrollController(keepScrollOffset: false),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 22, bottom: 14),
                          child: Text(
                            'План посева',
                            style: FarmTextStyles.roboto32w400.copyWith(color: FarmColors.primary),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 22, bottom: 14),
                          child: SizedBox(
                            height: 52,
                            width: 200,
                            child: ValueListenableBuilder(
                              valueListenable: _isCreate,
                              builder: (context, bool isCreate, child) {
                                return isCreate
                                    ? FarmButton(
                                        child: const Text(
                                          'Сохранить',
                                          style: FarmTextStyles.roboto20w400,
                                        ),
                                        onTap: () {
                                          if (_culture.text.isEmpty) {
                                            _isCreate.value = false;
                                          } else {
                                            _cubit.onCultureCreate(
                                              Culture(
                                                cultureName: _culture.text,
                                                plantedArea: double.parse(_fieldArea.text),
                                                estimatedYield: double.parse(_yield.text) *
                                                    double.parse(_fieldArea.text),
                                                estimatedCost: double.parse(_estimatedCost.text),
                                                collectedInPercentage: 0,
                                                collected: 0,
                                                waste: 0,
                                                currentSeeds: 0,
                                                budgetSeeds: double.parse(_seeds.text),
                                                currentFertilizers: 0,
                                                budgetFertilizers: double.parse(_fertilizers.text),
                                                currentHerbicides: 0,
                                                budgetHerbicides: double.parse(_herbicides.text),
                                                currentInsecticides: 0,
                                                budgetInsecticides:
                                                    double.parse(_insecticides.text),
                                                currentAdjuvant: 0,
                                                budgetAdjuvant: double.parse(_adjuvants.text),
                                                currentOther: 0,
                                                budgetOther: double.parse(_other.text),
                                                profit: double.parse(_yield.text) *
                                                    double.parse(_fieldArea.text) *
                                                    double.parse(_estimatedCost.text),
                                              ),
                                            );
                                          }
                                        },
                                      )
                                    : FarmButton(
                                        child: const Text(
                                          'Создать',
                                          style: FarmTextStyles.roboto20w400,
                                        ),
                                        onTap: () {
                                          _isCreate.value = true;
                                        },
                                      );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFE0E0E0),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SeedingTableHeader(),
                          ValueListenableBuilder(
                            valueListenable: _isCreate,
                            builder: (context, bool isCreate, child) {
                              return isCreate
                                  ? SeedingTableColumnWithInput(
                                      culture: _culture,
                                      fieldArea: _fieldArea,
                                      yield: _yield,
                                      estimatedCost: _estimatedCost,
                                      profit: _profit,
                                      seeds: _seeds,
                                      fertilizers: _fertilizers,
                                      herbicides: _herbicides,
                                      insecticides: _insecticides,
                                      adjuvants: _adjuvants,
                                      other: _other,
                                    )
                                  : Container();
                            },
                          ),
                          if (state.cultureList.isEmpty) ...[
                            const Expanded(
                              child: SeedingTableEmptyColumn(),
                            ),
                          ] else ...[
                            Expanded(
                              child: SizedBox(
                                height: 712,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: state.cultureList.length,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      children: [
                                        SeedingPlanTableItem(culture: state.cultureList[index]),
                                        if (state.cultureList.length == index + 1) ...[
                                          const SizedBox(
                                            width: 1000,
                                            child: SeedingTableEmptyColumn(),
                                          ),
                                        ],
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                          SeedingTableFooter(
                            averageFieldArea: state.averageFieldArea,
                            averageYield: state.averageYield,
                            averageEstimatedCost: state.averageEstimatedCost,
                            averageProfit: state.averageProfit,
                            averageSeeds: state.averageSeeds,
                            averageFertilizers: state.averageFertilizers,
                            averageHerbicides: state.averageHerbicides,
                            averageInsecticides: state.averageInsecticides,
                            averageAdjuvants: state.averageAdjuvants,
                            averageOther: state.averageOther,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:farm_web/common/widgets/menu/type_page.dart';
import 'package:farm_web/presentation/bloc/culture/culture_cubit.dart';
import 'package:farm_web/presentation/bloc/culture/culture_state.dart';
import 'package:farm_web/presentation/page/culture/widgets/culture_widget.dart';
import 'package:farm_web/presentation/page/widget/page_body.dart';
import 'package:farm_web/presentation/styling/farm_colors.dart';
import 'package:farm_web/presentation/styling/farm_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CulturePage extends StatefulWidget {
  const CulturePage({Key? key}) : super(key: key);

  @override
  State<CulturePage> createState() => _CulturePageState();
}

class _CulturePageState extends State<CulturePage> {
  late CultureCubit _cubit;

  @override
  void initState() {
    _cubit = CultureCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CultureCubit, CultureState>(
      bloc: _cubit,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: PageBody(
            typePage: const TypePage.culture(),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 22, left: 40, bottom: 14),
                    child: Text(
                      'Культуры',
                      style: FarmTextStyles.roboto32w400.copyWith(color: FarmColors.primary),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1.5,
                      ),
                      itemCount: state.cultureList.length,
                      itemBuilder: (context, index) {
                        return CultureWidget(
                          culture: state.cultureList[index],
                        );
                      },
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
}

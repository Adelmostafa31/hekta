// ignore_for_file: must_be_immutable, camel_case_types, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hekta/core/constants/list_onBording_model.dart';
import 'package:hekta/features/on_boarding/presentation/view/widget/onBoarding_page_view.dart';
import 'package:hekta/features/on_boarding/presentation/manager/on_boarding_cubit.dart';
import 'package:hekta/features/on_boarding/presentation/manager/on_boarding_state.dart';

class text_page_view extends StatelessWidget {
  text_page_view({
    Key? key,
    required this.innerPageController,
    required this.isThird,
    required this.isInner,
    required this.outerPageController,
  }) : super(key: key);
  var outerPageController = PageController();
  var innerPageController = PageController();
  bool isInner;
  bool isThird;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) {
        var cubit = OnBoardingCubit.get(context);

        return Expanded(
          child: PageView.builder(
            onPageChanged: (index) {
              if (index == onBoardingPageViewList.length - 1) {
                isThird = cubit.changeOnThirdState(false);
                isInner = cubit.changeOnThirdState(false);
              } else {
                isThird = cubit.changeOnThirdState(true);
                isInner = cubit.changeOnThirdState(false);

              }
              if (outerPageController !=
                      "PageController#b92ae(one client, offset 785.5)" &&
                  innerPageController !=
                      "PageController#b92ae(one client, offset 785.5)") {
                outerPageController.jumpToPage(index);
              }
            },
            controller: innerPageController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => onBoarding_page_view(
              bigText: onBoardingPageViewList[index].text,
            ),
            itemCount: onBoardingPageViewList.length,
          ),
        );
      },
    );
  }
}

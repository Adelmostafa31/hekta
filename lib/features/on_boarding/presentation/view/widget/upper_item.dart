// ignore_for_file: unrelated_type_equality_checks, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hekta/core/constants/list_onBording_model.dart';
import 'package:hekta/features/on_boarding/presentation/manager/on_boarding_cubit.dart';
import 'package:hekta/features/on_boarding/presentation/manager/on_boarding_state.dart';

class upper_item extends StatelessWidget {
  upper_item({
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
        return SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          child: PageView.builder(
            onPageChanged: (index) {
              cubit.checkIsThird(index);
              if (index == onBoardingPageViewList.length - 1) {
                // isThird = cubit.changeOnThirdState(false);
                isThird = cubit.isThird;
                isInner = cubit.changeOnThirdState(true);
              } else {
                isThird = cubit.isThird;
                isInner = cubit.changeOnThirdState(true);
              }
              if (outerPageController !=
                      "PageController#b92ae(one client, offset 785.5)" &&
                  innerPageController !=
                      "PageController#b92ae(one client, offset 785.5)") {
                innerPageController.jumpToPage(index);
              }
            },
            controller: outerPageController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * .5,
                width: double.infinity,
                child: Image.asset(
                  "${onBoardingPageViewList[index].backGroundImage}",
                  fit: BoxFit.cover,
                ),
              );
            },
            itemCount: onBoardingPageViewList.length,
          ),
        );
      },
    );
  }
}

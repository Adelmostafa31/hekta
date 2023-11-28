// ignore_for_file: must_be_immutable, unrelated_type_equality_checks, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hekta/features/on_boarding/presentation/view/widget/next_button.dart';
import 'package:hekta/features/on_boarding/presentation/view/widget/smooth_indecator.dart';
import 'package:hekta/features/on_boarding/presentation/view/widget/text_page_view.dart';
import 'package:hekta/features/on_boarding/presentation/view/widget/upper_item.dart';
import 'package:hekta/features/on_boarding/presentation/manager/on_boarding_cubit.dart';
import 'package:hekta/features/on_boarding/presentation/manager/on_boarding_state.dart';

class onBoarding_body extends StatelessWidget {
  bool isThird = false;
  bool isInner = false;
  var outerPageController = PageController();
  var innerPageController = PageController();

  onBoarding_body({super.key});

  void dispose() {
    outerPageController.dispose();
    innerPageController.dispose();
    // super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocProvider(
        create: (context) => OnBoardingCubit(),
        child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
          builder: (context, state) {
            var cubit = OnBoardingCubit.get(context);
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    upper_item(
                      innerPageController: innerPageController,
                      isThird: isThird,
                      isInner: isInner,
                      outerPageController: outerPageController,
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 350),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .55,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: Column(
                          children: [
                            text_page_view(
                              innerPageController: innerPageController,
                              isThird: isThird,
                              isInner: isInner,
                              outerPageController: outerPageController,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                start: 20,
                                end: 20,
                                bottom: 20,
                              ),
                              child: Row(
                                children: [
                                  smooth_indecator(
                                    innerPageController: innerPageController,
                                    isInner: isInner,
                                    outerPageController: outerPageController,
                                  ),
                                  const Spacer(),
                                  next_button(
                                    innerPageController: innerPageController,
                                    isThird: cubit.isThird,
                                    outerPageController: outerPageController,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

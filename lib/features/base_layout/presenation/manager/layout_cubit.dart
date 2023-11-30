// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hekta/features/base_layout/presenation/manager/layout_states.dart';
import 'package:hekta/features/edit_profile/presentation/views/edit_profile.dart';
import 'package:hekta/features/home/presentations/views/home.dart';
import 'package:hekta/features/orders/presentation/views/orders.dart';

class layout_cubit extends Cubit<layout_states> {
  layout_cubit() : super(initial_state());

  static layout_cubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  int changeNavBarIndex(int index) {
    currentIndex = index;
    emit(change_nav_bar_index());
    return currentIndex;
  }

  List<Widget> screens = [
    const home(),
    const home(),
    const orders(),
    const home(),
    const edit_profile(),
  ];
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hekta/features/base_layout/presenation/manager/layout_states.dart';

class layout_cubit extends Cubit<layout_states> {
  layout_cubit() : super(initial_state());

  static layout_cubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  int changeNavBarIndex(int index) {
    currentIndex = index;
    emit(change_nav_bar_index());
    return currentIndex;
  }
}

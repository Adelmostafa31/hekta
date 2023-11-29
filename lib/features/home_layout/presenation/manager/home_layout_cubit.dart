import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  int? navBarIndex;

  HomeLayoutCubit() : super(HomeLayoutInitial());
  static HomeLayoutCubit get(context) => BlocProvider.of(context);

  int changeNavBarIndex(int index) {
    navBarIndex = index;
    emit(ChangeNavBarIndexState());
    return navBarIndex!;

  }
}

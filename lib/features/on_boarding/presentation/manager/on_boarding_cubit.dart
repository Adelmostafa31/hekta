import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hekta/features/on_boarding/presentation/manager/on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  static OnBoardingCubit get(context) => BlocProvider.of(context);

  bool changeOnThirdState(bool isThird) {
    isThird = !isThird;
    emit(ChangeIsThirdState());
    return isThird;
  }

  bool isThird = false;
  void checkIsThird(int index) {
    if (index == 2) {
      isThird = true;
    }
    emit(ChangeIsThirdState());
  }
}

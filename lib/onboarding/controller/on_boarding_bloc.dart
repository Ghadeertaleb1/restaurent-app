import 'package:flutter_application_1/onboarding/controller/on_boarding_event.dart';
import 'package:flutter_application_1/onboarding/controller/on_boarding_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc() : super(OnBoardingState.initial()) {
    on<OnBoardingNextEvent>((event, emit) {
      emit(state.copyWith(isOnBoardingComplete: true));
    });
  }
}

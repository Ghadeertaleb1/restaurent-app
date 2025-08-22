import 'package:flutter_application_1/home/controller/home_events.dart';
import 'package:flutter_application_1/home/controller/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<BaseHomeEvents, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    // on<HomeInitialEvent>((event, emit) {
    //   emit(state);
    // });

    on<HomeTabChangeEvent>((event, emit) {
      emit(state.copyWith(
        selectedIndexTabBar: event.index,
      ));
    });

    on<HomeItemClickEvent>((event, emit) {
      emit(state.copyWith(
        catogarySelectedIndex: event.index,
      ));
    });
  }
}

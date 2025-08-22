import 'package:equatable/equatable.dart';

abstract class OnBoardingEvent extends Equatable {
  const OnBoardingEvent();

  @override
  List<Object> get props => [];
}

class OnBoardingNextEvent extends OnBoardingEvent {}

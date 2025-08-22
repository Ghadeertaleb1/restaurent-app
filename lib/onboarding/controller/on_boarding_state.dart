import 'package:equatable/equatable.dart';

class OnBoardingState extends Equatable {
  final bool isOnBoardingComplete;

  const OnBoardingState({required this.isOnBoardingComplete});

  factory OnBoardingState.initial() {
    return const OnBoardingState(isOnBoardingComplete: false);
  }

  @override
  List<Object?> get props => [isOnBoardingComplete];

  OnBoardingState copyWith({bool? isOnBoardingComplete}) {
    return OnBoardingState(
      isOnBoardingComplete: isOnBoardingComplete ?? this.isOnBoardingComplete,
    );
  }
}

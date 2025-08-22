import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  final int selectedIndexTabBar;
  final int catogarySelectedIndex;
  const HomeState(
      {required this.catogarySelectedIndex, required this.selectedIndexTabBar});

  // this state works when the app is opened for the first time and with HomeInitialEvent

  factory HomeState.initial() {
    return const HomeState(catogarySelectedIndex: 0, selectedIndexTabBar: 0);
  }

  HomeState copyWith({int? catogarySelectedIndex, int? selectedIndexTabBar}) {
    return HomeState(
      selectedIndexTabBar: selectedIndexTabBar ?? this.selectedIndexTabBar,
      catogarySelectedIndex:
          catogarySelectedIndex ?? this.catogarySelectedIndex,
    );
  }

  @override
  List<Object?> get props => [
        selectedIndexTabBar,
        catogarySelectedIndex,
      ];
}

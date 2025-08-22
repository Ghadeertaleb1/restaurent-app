import 'package:equatable/equatable.dart';

abstract class BaseHomeEvents extends Equatable {
  const BaseHomeEvents();

  @override
  List<Object> get props => [];
}

class HomeInitialEvent extends BaseHomeEvents {}

class HomeTabChangeEvent extends BaseHomeEvents {
  final int index;
  const HomeTabChangeEvent({required this.index});

  @override
  List<Object> get props => [index];
}

class HomeItemClickEvent extends BaseHomeEvents {
  final int index;
  const HomeItemClickEvent({required this.index});

  @override
  List<Object> get props => [index];
}

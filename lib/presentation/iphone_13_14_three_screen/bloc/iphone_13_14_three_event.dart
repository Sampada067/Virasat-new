// ignore_for_file: must_be_immutable

part of 'iphone_13_14_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1314Three widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1314ThreeEvent extends Equatable {}

/// Event that is dispatched when the Iphone1314Three widget is first created.
class Iphone1314ThreeInitialEvent extends Iphone1314ThreeEvent {
  @override
  List<Object?> get props => [];
}

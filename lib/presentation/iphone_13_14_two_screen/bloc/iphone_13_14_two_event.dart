// ignore_for_file: must_be_immutable

part of 'iphone_13_14_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1314Two widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1314TwoEvent extends Equatable {}

/// Event that is dispatched when the Iphone1314Two widget is first created.
class Iphone1314TwoInitialEvent extends Iphone1314TwoEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'iphone_13_14_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1314Four widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1314FourEvent extends Equatable {}

/// Event that is dispatched when the Iphone1314Four widget is first created.
class Iphone1314FourInitialEvent extends Iphone1314FourEvent {
  @override
  List<Object?> get props => [];
}

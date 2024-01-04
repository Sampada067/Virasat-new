// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProFourEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProFour widget is first created.
class Iphone14ProFourInitialEvent extends Iphone14ProFourEvent {
  @override
  List<Object?> get props => [];
}

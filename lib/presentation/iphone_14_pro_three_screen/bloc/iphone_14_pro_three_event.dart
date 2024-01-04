// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProThreeEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProThree widget is first created.
class Iphone14ProThreeInitialEvent extends Iphone14ProThreeEvent {
  @override
  List<Object?> get props => [];
}

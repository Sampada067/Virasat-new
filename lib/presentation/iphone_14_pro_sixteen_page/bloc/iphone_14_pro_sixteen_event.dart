// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_sixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProSixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProSixteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProSixteen widget is first created.
class Iphone14ProSixteenInitialEvent extends Iphone14ProSixteenEvent {
  @override
  List<Object?> get props => [];
}

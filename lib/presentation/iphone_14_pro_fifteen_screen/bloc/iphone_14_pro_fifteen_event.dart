// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_fifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProFifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProFifteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProFifteen widget is first created.
class Iphone14ProFifteenInitialEvent extends Iphone14ProFifteenEvent {
  @override
  List<Object?> get props => [];
}

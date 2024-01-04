// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_thirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProThirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProThirteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProThirteen widget is first created.
class Iphone14ProThirteenInitialEvent extends Iphone14ProThirteenEvent {
  @override
  List<Object?> get props => [];
}

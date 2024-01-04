// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProFourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProFourteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProFourteen widget is first created.
class Iphone14ProFourteenInitialEvent extends Iphone14ProFourteenEvent {
  @override
  List<Object?> get props => [];
}

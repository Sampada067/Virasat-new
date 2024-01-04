// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProFiveEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProFive widget is first created.
class Iphone14ProFiveInitialEvent extends Iphone14ProFiveEvent {
  @override
  List<Object?> get props => [];
}

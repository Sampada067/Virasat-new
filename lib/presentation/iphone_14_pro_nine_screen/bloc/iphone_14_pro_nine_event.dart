// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProNineEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProNine widget is first created.
class Iphone14ProNineInitialEvent extends Iphone14ProNineEvent {
  @override
  List<Object?> get props => [];
}

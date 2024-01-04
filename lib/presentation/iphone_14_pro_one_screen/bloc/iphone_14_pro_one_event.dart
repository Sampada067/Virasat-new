// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProOneEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProOne widget is first created.
class Iphone14ProOneInitialEvent extends Iphone14ProOneEvent {
  @override
  List<Object?> get props => [];
}

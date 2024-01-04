// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProSixEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProSix widget is first created.
class Iphone14ProSixInitialEvent extends Iphone14ProSixEvent {
  @override
  List<Object?> get props => [];
}

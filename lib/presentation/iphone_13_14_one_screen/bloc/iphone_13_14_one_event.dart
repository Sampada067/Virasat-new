// ignore_for_file: must_be_immutable

part of 'iphone_13_14_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1314One widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1314OneEvent extends Equatable {}

/// Event that is dispatched when the Iphone1314One widget is first created.
class Iphone1314OneInitialEvent extends Iphone1314OneEvent {
  @override
  List<Object?> get props => [];
}

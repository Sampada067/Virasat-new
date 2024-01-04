// ignore_for_file: must_be_immutable

part of 'iphone_13_14_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1314Five widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1314FiveEvent extends Equatable {}

/// Event that is dispatched when the Iphone1314Five widget is first created.
class Iphone1314FiveInitialEvent extends Iphone1314FiveEvent {
  @override
  List<Object?> get props => [];
}

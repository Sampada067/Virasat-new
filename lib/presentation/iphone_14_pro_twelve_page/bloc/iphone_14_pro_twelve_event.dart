// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProTwelveEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProTwelve widget is first created.
class Iphone14ProTwelveInitialEvent extends Iphone14ProTwelveEvent {
  @override
  List<Object?> get props => [];
}

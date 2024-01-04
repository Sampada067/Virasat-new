// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_twelve_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProTwelveContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProTwelveContainerEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProTwelveContainer widget is first created.
class Iphone14ProTwelveContainerInitialEvent
    extends Iphone14ProTwelveContainerEvent {
  @override
  List<Object?> get props => [];
}

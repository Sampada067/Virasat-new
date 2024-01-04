// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_sixteen_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProSixteenTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProSixteenTabContainerEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProSixteenTabContainer widget is first created.
class Iphone14ProSixteenTabContainerInitialEvent
    extends Iphone14ProSixteenTabContainerEvent {
  @override
  List<Object?> get props => [];
}

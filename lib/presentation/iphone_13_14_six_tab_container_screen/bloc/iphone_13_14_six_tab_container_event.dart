// ignore_for_file: must_be_immutable

part of 'iphone_13_14_six_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1314SixTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1314SixTabContainerEvent extends Equatable {}

/// Event that is dispatched when the Iphone1314SixTabContainer widget is first created.
class Iphone1314SixTabContainerInitialEvent
    extends Iphone1314SixTabContainerEvent {
  @override
  List<Object?> get props => [];
}

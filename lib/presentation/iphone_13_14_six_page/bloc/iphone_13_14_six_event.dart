// ignore_for_file: must_be_immutable

part of 'iphone_13_14_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1314Six widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1314SixEvent extends Equatable {}

/// Event that is dispatched when the Iphone1314Six widget is first created.
class Iphone1314SixInitialEvent extends Iphone1314SixEvent {
  @override
  List<Object?> get props => [];
}

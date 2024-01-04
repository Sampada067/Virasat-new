// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProElevenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProEleven widget is first created.
class Iphone14ProElevenInitialEvent extends Iphone14ProElevenEvent {
  @override
  List<Object?> get props => [];
}

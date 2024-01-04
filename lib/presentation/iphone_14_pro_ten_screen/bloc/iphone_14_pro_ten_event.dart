// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProTenEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProTen widget is first created.
class Iphone14ProTenInitialEvent extends Iphone14ProTenEvent {
  @override
  List<Object?> get props => [];
}

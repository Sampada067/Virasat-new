// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone14ProEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone14ProEightEvent extends Equatable {}

/// Event that is dispatched when the Iphone14ProEight widget is first created.
class Iphone14ProEightInitialEvent extends Iphone14ProEightEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends Iphone14ProEightEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

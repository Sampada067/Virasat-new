// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_nine_bloc.dart';

/// Represents the state of Iphone14ProNine in the application.
class Iphone14ProNineState extends Equatable {
  Iphone14ProNineState({this.iphone14ProNineModelObj});

  Iphone14ProNineModel? iphone14ProNineModelObj;

  @override
  List<Object?> get props => [
        iphone14ProNineModelObj,
      ];
  Iphone14ProNineState copyWith(
      {Iphone14ProNineModel? iphone14ProNineModelObj}) {
    return Iphone14ProNineState(
      iphone14ProNineModelObj:
          iphone14ProNineModelObj ?? this.iphone14ProNineModelObj,
    );
  }
}

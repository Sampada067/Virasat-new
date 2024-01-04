// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_sixteen_bloc.dart';

/// Represents the state of Iphone14ProSixteen in the application.
class Iphone14ProSixteenState extends Equatable {
  Iphone14ProSixteenState({this.iphone14ProSixteenModelObj});

  Iphone14ProSixteenModel? iphone14ProSixteenModelObj;

  @override
  List<Object?> get props => [
        iphone14ProSixteenModelObj,
      ];
  Iphone14ProSixteenState copyWith(
      {Iphone14ProSixteenModel? iphone14ProSixteenModelObj}) {
    return Iphone14ProSixteenState(
      iphone14ProSixteenModelObj:
          iphone14ProSixteenModelObj ?? this.iphone14ProSixteenModelObj,
    );
  }
}

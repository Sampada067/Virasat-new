// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_five_bloc.dart';

/// Represents the state of Iphone14ProFive in the application.
class Iphone14ProFiveState extends Equatable {
  Iphone14ProFiveState({this.iphone14ProFiveModelObj});

  Iphone14ProFiveModel? iphone14ProFiveModelObj;

  @override
  List<Object?> get props => [
        iphone14ProFiveModelObj,
      ];
  Iphone14ProFiveState copyWith(
      {Iphone14ProFiveModel? iphone14ProFiveModelObj}) {
    return Iphone14ProFiveState(
      iphone14ProFiveModelObj:
          iphone14ProFiveModelObj ?? this.iphone14ProFiveModelObj,
    );
  }
}

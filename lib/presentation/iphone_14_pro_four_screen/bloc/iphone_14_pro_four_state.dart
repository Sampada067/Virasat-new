// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_four_bloc.dart';

/// Represents the state of Iphone14ProFour in the application.
class Iphone14ProFourState extends Equatable {
  Iphone14ProFourState({this.iphone14ProFourModelObj});

  Iphone14ProFourModel? iphone14ProFourModelObj;

  @override
  List<Object?> get props => [
        iphone14ProFourModelObj,
      ];
  Iphone14ProFourState copyWith(
      {Iphone14ProFourModel? iphone14ProFourModelObj}) {
    return Iphone14ProFourState(
      iphone14ProFourModelObj:
          iphone14ProFourModelObj ?? this.iphone14ProFourModelObj,
    );
  }
}

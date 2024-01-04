// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_six_bloc.dart';

/// Represents the state of Iphone14ProSix in the application.
class Iphone14ProSixState extends Equatable {
  Iphone14ProSixState({this.iphone14ProSixModelObj});

  Iphone14ProSixModel? iphone14ProSixModelObj;

  @override
  List<Object?> get props => [
        iphone14ProSixModelObj,
      ];
  Iphone14ProSixState copyWith({Iphone14ProSixModel? iphone14ProSixModelObj}) {
    return Iphone14ProSixState(
      iphone14ProSixModelObj:
          iphone14ProSixModelObj ?? this.iphone14ProSixModelObj,
    );
  }
}

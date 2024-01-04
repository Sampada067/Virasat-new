// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_ten_bloc.dart';

/// Represents the state of Iphone14ProTen in the application.
class Iphone14ProTenState extends Equatable {
  Iphone14ProTenState({this.iphone14ProTenModelObj});

  Iphone14ProTenModel? iphone14ProTenModelObj;

  @override
  List<Object?> get props => [
        iphone14ProTenModelObj,
      ];
  Iphone14ProTenState copyWith({Iphone14ProTenModel? iphone14ProTenModelObj}) {
    return Iphone14ProTenState(
      iphone14ProTenModelObj:
          iphone14ProTenModelObj ?? this.iphone14ProTenModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'iphone_13_14_two_bloc.dart';

/// Represents the state of Iphone1314Two in the application.
class Iphone1314TwoState extends Equatable {
  Iphone1314TwoState({this.iphone1314TwoModelObj});

  Iphone1314TwoModel? iphone1314TwoModelObj;

  @override
  List<Object?> get props => [
        iphone1314TwoModelObj,
      ];
  Iphone1314TwoState copyWith({Iphone1314TwoModel? iphone1314TwoModelObj}) {
    return Iphone1314TwoState(
      iphone1314TwoModelObj:
          iphone1314TwoModelObj ?? this.iphone1314TwoModelObj,
    );
  }
}

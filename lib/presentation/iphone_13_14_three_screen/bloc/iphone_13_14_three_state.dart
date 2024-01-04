// ignore_for_file: must_be_immutable

part of 'iphone_13_14_three_bloc.dart';

/// Represents the state of Iphone1314Three in the application.
class Iphone1314ThreeState extends Equatable {
  Iphone1314ThreeState({this.iphone1314ThreeModelObj});

  Iphone1314ThreeModel? iphone1314ThreeModelObj;

  @override
  List<Object?> get props => [
        iphone1314ThreeModelObj,
      ];
  Iphone1314ThreeState copyWith(
      {Iphone1314ThreeModel? iphone1314ThreeModelObj}) {
    return Iphone1314ThreeState(
      iphone1314ThreeModelObj:
          iphone1314ThreeModelObj ?? this.iphone1314ThreeModelObj,
    );
  }
}

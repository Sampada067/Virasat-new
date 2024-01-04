// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_twelve_container_bloc.dart';

/// Represents the state of Iphone14ProTwelveContainer in the application.
class Iphone14ProTwelveContainerState extends Equatable {
  Iphone14ProTwelveContainerState({this.iphone14ProTwelveContainerModelObj});

  Iphone14ProTwelveContainerModel? iphone14ProTwelveContainerModelObj;

  @override
  List<Object?> get props => [
        iphone14ProTwelveContainerModelObj,
      ];
  Iphone14ProTwelveContainerState copyWith(
      {Iphone14ProTwelveContainerModel? iphone14ProTwelveContainerModelObj}) {
    return Iphone14ProTwelveContainerState(
      iphone14ProTwelveContainerModelObj: iphone14ProTwelveContainerModelObj ??
          this.iphone14ProTwelveContainerModelObj,
    );
  }
}

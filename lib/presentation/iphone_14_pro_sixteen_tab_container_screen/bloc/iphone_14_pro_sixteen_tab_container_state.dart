// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_sixteen_tab_container_bloc.dart';

/// Represents the state of Iphone14ProSixteenTabContainer in the application.
class Iphone14ProSixteenTabContainerState extends Equatable {
  Iphone14ProSixteenTabContainerState(
      {this.iphone14ProSixteenTabContainerModelObj});

  Iphone14ProSixteenTabContainerModel? iphone14ProSixteenTabContainerModelObj;

  @override
  List<Object?> get props => [
        iphone14ProSixteenTabContainerModelObj,
      ];
  Iphone14ProSixteenTabContainerState copyWith(
      {Iphone14ProSixteenTabContainerModel?
          iphone14ProSixteenTabContainerModelObj}) {
    return Iphone14ProSixteenTabContainerState(
      iphone14ProSixteenTabContainerModelObj:
          iphone14ProSixteenTabContainerModelObj ??
              this.iphone14ProSixteenTabContainerModelObj,
    );
  }
}

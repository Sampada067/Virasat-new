// ignore_for_file: must_be_immutable

part of 'iphone_13_14_six_tab_container_bloc.dart';

/// Represents the state of Iphone1314SixTabContainer in the application.
class Iphone1314SixTabContainerState extends Equatable {
  Iphone1314SixTabContainerState({this.iphone1314SixTabContainerModelObj});

  Iphone1314SixTabContainerModel? iphone1314SixTabContainerModelObj;

  @override
  List<Object?> get props => [
        iphone1314SixTabContainerModelObj,
      ];
  Iphone1314SixTabContainerState copyWith(
      {Iphone1314SixTabContainerModel? iphone1314SixTabContainerModelObj}) {
    return Iphone1314SixTabContainerState(
      iphone1314SixTabContainerModelObj: iphone1314SixTabContainerModelObj ??
          this.iphone1314SixTabContainerModelObj,
    );
  }
}

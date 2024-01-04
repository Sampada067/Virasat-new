// ignore_for_file: must_be_immutable

part of 'iphone_13_14_five_bloc.dart';

/// Represents the state of Iphone1314Five in the application.
class Iphone1314FiveState extends Equatable {
  Iphone1314FiveState({this.iphone1314FiveModelObj});

  Iphone1314FiveModel? iphone1314FiveModelObj;

  @override
  List<Object?> get props => [
        iphone1314FiveModelObj,
      ];
  Iphone1314FiveState copyWith({Iphone1314FiveModel? iphone1314FiveModelObj}) {
    return Iphone1314FiveState(
      iphone1314FiveModelObj:
          iphone1314FiveModelObj ?? this.iphone1314FiveModelObj,
    );
  }
}

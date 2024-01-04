// ignore_for_file: must_be_immutable

part of 'iphone_13_14_four_bloc.dart';

/// Represents the state of Iphone1314Four in the application.
class Iphone1314FourState extends Equatable {
  Iphone1314FourState({this.iphone1314FourModelObj});

  Iphone1314FourModel? iphone1314FourModelObj;

  @override
  List<Object?> get props => [
        iphone1314FourModelObj,
      ];
  Iphone1314FourState copyWith({Iphone1314FourModel? iphone1314FourModelObj}) {
    return Iphone1314FourState(
      iphone1314FourModelObj:
          iphone1314FourModelObj ?? this.iphone1314FourModelObj,
    );
  }
}

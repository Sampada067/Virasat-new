// ignore_for_file: must_be_immutable

part of 'iphone_13_14_six_bloc.dart';

/// Represents the state of Iphone1314Six in the application.
class Iphone1314SixState extends Equatable {
  Iphone1314SixState({this.iphone1314SixModelObj});

  Iphone1314SixModel? iphone1314SixModelObj;

  @override
  List<Object?> get props => [
        iphone1314SixModelObj,
      ];
  Iphone1314SixState copyWith({Iphone1314SixModel? iphone1314SixModelObj}) {
    return Iphone1314SixState(
      iphone1314SixModelObj:
          iphone1314SixModelObj ?? this.iphone1314SixModelObj,
    );
  }
}

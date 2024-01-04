// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_eleven_bloc.dart';

/// Represents the state of Iphone14ProEleven in the application.
class Iphone14ProElevenState extends Equatable {
  Iphone14ProElevenState({this.iphone14ProElevenModelObj});

  Iphone14ProElevenModel? iphone14ProElevenModelObj;

  @override
  List<Object?> get props => [
        iphone14ProElevenModelObj,
      ];
  Iphone14ProElevenState copyWith(
      {Iphone14ProElevenModel? iphone14ProElevenModelObj}) {
    return Iphone14ProElevenState(
      iphone14ProElevenModelObj:
          iphone14ProElevenModelObj ?? this.iphone14ProElevenModelObj,
    );
  }
}

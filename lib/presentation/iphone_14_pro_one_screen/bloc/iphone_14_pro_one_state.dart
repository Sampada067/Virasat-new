// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_one_bloc.dart';

/// Represents the state of Iphone14ProOne in the application.
class Iphone14ProOneState extends Equatable {
  Iphone14ProOneState({this.iphone14ProOneModelObj});

  Iphone14ProOneModel? iphone14ProOneModelObj;

  @override
  List<Object?> get props => [
        iphone14ProOneModelObj,
      ];
  Iphone14ProOneState copyWith({Iphone14ProOneModel? iphone14ProOneModelObj}) {
    return Iphone14ProOneState(
      iphone14ProOneModelObj:
          iphone14ProOneModelObj ?? this.iphone14ProOneModelObj,
    );
  }
}

// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_fifteen_bloc.dart';

/// Represents the state of Iphone14ProFifteen in the application.
class Iphone14ProFifteenState extends Equatable {
  Iphone14ProFifteenState({
    this.emailController,
    this.iphone14ProFifteenModelObj,
  });

  TextEditingController? emailController;

  Iphone14ProFifteenModel? iphone14ProFifteenModelObj;

  @override
  List<Object?> get props => [
        emailController,
        iphone14ProFifteenModelObj,
      ];
  Iphone14ProFifteenState copyWith({
    TextEditingController? emailController,
    Iphone14ProFifteenModel? iphone14ProFifteenModelObj,
  }) {
    return Iphone14ProFifteenState(
      emailController: emailController ?? this.emailController,
      iphone14ProFifteenModelObj:
          iphone14ProFifteenModelObj ?? this.iphone14ProFifteenModelObj,
    );
  }
}

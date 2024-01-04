// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_fourteen_bloc.dart';

/// Represents the state of Iphone14ProFourteen in the application.
class Iphone14ProFourteenState extends Equatable {
  Iphone14ProFourteenState({
    this.promoCodeController,
    this.iphone14ProFourteenModelObj,
  });

  TextEditingController? promoCodeController;

  Iphone14ProFourteenModel? iphone14ProFourteenModelObj;

  @override
  List<Object?> get props => [
        promoCodeController,
        iphone14ProFourteenModelObj,
      ];
  Iphone14ProFourteenState copyWith({
    TextEditingController? promoCodeController,
    Iphone14ProFourteenModel? iphone14ProFourteenModelObj,
  }) {
    return Iphone14ProFourteenState(
      promoCodeController: promoCodeController ?? this.promoCodeController,
      iphone14ProFourteenModelObj:
          iphone14ProFourteenModelObj ?? this.iphone14ProFourteenModelObj,
    );
  }
}

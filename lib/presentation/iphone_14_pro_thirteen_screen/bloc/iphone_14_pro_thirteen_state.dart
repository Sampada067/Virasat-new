// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_thirteen_bloc.dart';

/// Represents the state of Iphone14ProThirteen in the application.
class Iphone14ProThirteenState extends Equatable {
  Iphone14ProThirteenState({
    this.categoryvalueController,
    this.nameController,
    this.productDescriptionvalueController,
    this.iphone14ProThirteenModelObj,
  });

  TextEditingController? categoryvalueController;

  TextEditingController? nameController;

  TextEditingController? productDescriptionvalueController;

  Iphone14ProThirteenModel? iphone14ProThirteenModelObj;

  @override
  List<Object?> get props => [
        categoryvalueController,
        nameController,
        productDescriptionvalueController,
        iphone14ProThirteenModelObj,
      ];
  Iphone14ProThirteenState copyWith({
    TextEditingController? categoryvalueController,
    TextEditingController? nameController,
    TextEditingController? productDescriptionvalueController,
    Iphone14ProThirteenModel? iphone14ProThirteenModelObj,
  }) {
    return Iphone14ProThirteenState(
      categoryvalueController:
          categoryvalueController ?? this.categoryvalueController,
      nameController: nameController ?? this.nameController,
      productDescriptionvalueController: productDescriptionvalueController ??
          this.productDescriptionvalueController,
      iphone14ProThirteenModelObj:
          iphone14ProThirteenModelObj ?? this.iphone14ProThirteenModelObj,
    );
  }
}

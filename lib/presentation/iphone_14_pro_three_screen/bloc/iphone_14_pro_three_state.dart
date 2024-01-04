// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_three_bloc.dart';

/// Represents the state of Iphone14ProThree in the application.
class Iphone14ProThreeState extends Equatable {
  Iphone14ProThreeState({
    this.searchController,
    this.iphone14ProThreeModelObj,
  });

  TextEditingController? searchController;

  Iphone14ProThreeModel? iphone14ProThreeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        iphone14ProThreeModelObj,
      ];
  Iphone14ProThreeState copyWith({
    TextEditingController? searchController,
    Iphone14ProThreeModel? iphone14ProThreeModelObj,
  }) {
    return Iphone14ProThreeState(
      searchController: searchController ?? this.searchController,
      iphone14ProThreeModelObj:
          iphone14ProThreeModelObj ?? this.iphone14ProThreeModelObj,
    );
  }
}

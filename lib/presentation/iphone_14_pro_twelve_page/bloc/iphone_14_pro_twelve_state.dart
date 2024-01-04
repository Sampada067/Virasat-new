// ignore_for_file: must_be_immutable

part of 'iphone_14_pro_twelve_bloc.dart';

/// Represents the state of Iphone14ProTwelve in the application.
class Iphone14ProTwelveState extends Equatable {
  Iphone14ProTwelveState({
    this.searchController,
    this.iphone14ProTwelveModelObj,
  });

  TextEditingController? searchController;

  Iphone14ProTwelveModel? iphone14ProTwelveModelObj;

  @override
  List<Object?> get props => [
        searchController,
        iphone14ProTwelveModelObj,
      ];
  Iphone14ProTwelveState copyWith({
    TextEditingController? searchController,
    Iphone14ProTwelveModel? iphone14ProTwelveModelObj,
  }) {
    return Iphone14ProTwelveState(
      searchController: searchController ?? this.searchController,
      iphone14ProTwelveModelObj:
          iphone14ProTwelveModelObj ?? this.iphone14ProTwelveModelObj,
    );
  }
}

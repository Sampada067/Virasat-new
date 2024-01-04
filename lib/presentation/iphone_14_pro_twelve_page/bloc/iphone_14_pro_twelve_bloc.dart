import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/freshtext1_item_model.dart';
import '../models/pashmanishawltext_item_model.dart';
import 'package:virasat/presentation/iphone_14_pro_twelve_page/models/iphone_14_pro_twelve_model.dart';
part 'iphone_14_pro_twelve_event.dart';
part 'iphone_14_pro_twelve_state.dart';

/// A bloc that manages the state of a Iphone14ProTwelve according to the event that is dispatched to it.
class Iphone14ProTwelveBloc
    extends Bloc<Iphone14ProTwelveEvent, Iphone14ProTwelveState> {
  Iphone14ProTwelveBloc(Iphone14ProTwelveState initialState)
      : super(initialState) {
    on<Iphone14ProTwelveInitialEvent>(_onInitialize);
  }

  List<Freshtext1ItemModel> fillFreshtext1ItemList() {
    return [
      Freshtext1ItemModel(
          freshImage: ImageConstant.imgUntitledDesign, freshText: "Fresh"),
      Freshtext1ItemModel(
          freshImage: ImageConstant.imgUntitledDesign61x74,
          freshText: "Clothings"),
      Freshtext1ItemModel(
          freshImage: ImageConstant.imgUntitledDesign58x61,
          freshText: "Furniture")
    ];
  }

  List<PashmanishawltextItemModel> fillPashmanishawltextItemList() {
    return [
      PashmanishawltextItemModel(
          pashmaniShawlText: "Pashmani Shawl", srinagarText: "Srinagar"),
      PashmanishawltextItemModel(
          pashmaniShawlText: " Kashmiri-style jewelry",
          srinagarText: "Rajouri"),
      PashmanishawltextItemModel(srinagarText: "71"),
      PashmanishawltextItemModel(srinagarText: "55")
    ];
  }

  _onInitialize(
    Iphone14ProTwelveInitialEvent event,
    Emitter<Iphone14ProTwelveState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        iphone14ProTwelveModelObj: state.iphone14ProTwelveModelObj?.copyWith(
            freshtext1ItemList: fillFreshtext1ItemList(),
            pashmanishawltextItemList: fillPashmanishawltextItemList())));
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/freshtext_item_model.dart';
import '../models/view_item_model.dart';
import 'package:virasat/presentation/iphone_14_pro_three_screen/models/iphone_14_pro_three_model.dart';
part 'iphone_14_pro_three_event.dart';
part 'iphone_14_pro_three_state.dart';

/// A bloc that manages the state of a Iphone14ProThree according to the event that is dispatched to it.
class Iphone14ProThreeBloc
    extends Bloc<Iphone14ProThreeEvent, Iphone14ProThreeState> {
  Iphone14ProThreeBloc(Iphone14ProThreeState initialState)
      : super(initialState) {
    on<Iphone14ProThreeInitialEvent>(_onInitialize);
  }

  List<FreshtextItemModel> fillFreshtextItemList() {
    return [
      FreshtextItemModel(
          freshImage: ImageConstant.imgUntitledDesign, freshText: "Fresh"),
      FreshtextItemModel(
          freshImage: ImageConstant.imgUntitledDesign61x74,
          freshText: "Clothings"),
      FreshtextItemModel(
          freshImage: ImageConstant.imgUntitledDesign58x61,
          freshText: "Furniture")
    ];
  }

  List<ViewItemModel> fillViewItemList() {
    return List.generate(9, (index) => ViewItemModel());
  }

  _onInitialize(
    Iphone14ProThreeInitialEvent event,
    Emitter<Iphone14ProThreeState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        iphone14ProThreeModelObj: state.iphone14ProThreeModelObj?.copyWith(
            freshtextItemList: fillFreshtextItemList(),
            viewItemList: fillViewItemList())));
  }
}

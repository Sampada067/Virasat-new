import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/craftapaloozacomponent_item_model.dart';
import 'package:virasat/presentation/iphone_14_pro_sixteen_page/models/iphone_14_pro_sixteen_model.dart';
part 'iphone_14_pro_sixteen_event.dart';
part 'iphone_14_pro_sixteen_state.dart';

/// A bloc that manages the state of a Iphone14ProSixteen according to the event that is dispatched to it.
class Iphone14ProSixteenBloc
    extends Bloc<Iphone14ProSixteenEvent, Iphone14ProSixteenState> {
  Iphone14ProSixteenBloc(Iphone14ProSixteenState initialState)
      : super(initialState) {
    on<Iphone14ProSixteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone14ProSixteenInitialEvent event,
    Emitter<Iphone14ProSixteenState> emit,
  ) async {
    emit(state.copyWith(
        iphone14ProSixteenModelObj: state.iphone14ProSixteenModelObj?.copyWith(
      craftapaloozacomponentItemList: fillCraftapaloozacomponentItemList(),
    )));
  }

  List<CraftapaloozacomponentItemModel> fillCraftapaloozacomponentItemList() {
    return [
      CraftapaloozacomponentItemModel(
          craftapaloozaImage: ImageConstant.img01Raveendranpanikkarvellora,
          craftapaloozaText: "Craftapalooza",
          participatingText: "3k+ Participating",
          playgroundText: "Playground"),
      CraftapaloozacomponentItemModel(
          craftapaloozaImage: ImageConstant.imgVisitLocalCraftWorkshops,
          craftapaloozaText: "Craftapalooza",
          participatingText: "3k+ Participating",
          playgroundText: "Playground")
    ];
  }
}

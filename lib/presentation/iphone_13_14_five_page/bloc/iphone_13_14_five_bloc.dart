import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:virasat/presentation/iphone_13_14_five_page/models/iphone_13_14_five_model.dart';
part 'iphone_13_14_five_event.dart';
part 'iphone_13_14_five_state.dart';

/// A bloc that manages the state of a Iphone1314Five according to the event that is dispatched to it.
class Iphone1314FiveBloc
    extends Bloc<Iphone1314FiveEvent, Iphone1314FiveState> {
  Iphone1314FiveBloc(Iphone1314FiveState initialState) : super(initialState) {
    on<Iphone1314FiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1314FiveInitialEvent event,
    Emitter<Iphone1314FiveState> emit,
  ) async {
    emit(state.copyWith(
        iphone1314FiveModelObj: state.iphone1314FiveModelObj?.copyWith(
      viewhierarchyItemList: fillViewhierarchyItemList(),
    )));
  }

  List<ViewhierarchyItemModel> fillViewhierarchyItemList() {
    return [
      ViewhierarchyItemModel(
          image: ImageConstant.imgDownload10,
          text: "3k+ Views",
          text1: "Play now"),
      ViewhierarchyItemModel(
          image: ImageConstant.imgPeopleIstockBlog1060x737,
          text: "10K+ Listened")
    ];
  }
}

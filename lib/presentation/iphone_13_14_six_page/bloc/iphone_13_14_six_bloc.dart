import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/clickabletextlist_item_model.dart';
import 'package:virasat/presentation/iphone_13_14_six_page/models/iphone_13_14_six_model.dart';
part 'iphone_13_14_six_event.dart';
part 'iphone_13_14_six_state.dart';

/// A bloc that manages the state of a Iphone1314Six according to the event that is dispatched to it.
class Iphone1314SixBloc extends Bloc<Iphone1314SixEvent, Iphone1314SixState> {
  Iphone1314SixBloc(Iphone1314SixState initialState) : super(initialState) {
    on<Iphone1314SixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1314SixInitialEvent event,
    Emitter<Iphone1314SixState> emit,
  ) async {
    emit(state.copyWith(
        iphone1314SixModelObj: state.iphone1314SixModelObj?.copyWith(
      clickabletextlistItemList: fillClickabletextlistItemList(),
    )));
  }

  List<ClickabletextlistItemModel> fillClickabletextlistItemList() {
    return [
      ClickabletextlistItemModel(
          clickableImage: ImageConstant.imgCentralGovernm,
          clickableText: "Click on link")
    ];
  }
}

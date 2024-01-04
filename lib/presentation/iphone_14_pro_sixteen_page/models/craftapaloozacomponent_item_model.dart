import '../../../core/app_export.dart';

/// This class is used in the [craftapaloozacomponent_item_widget] screen.
class CraftapaloozacomponentItemModel {
  CraftapaloozacomponentItemModel({
    this.craftapaloozaImage,
    this.craftapaloozaText,
    this.participatingText,
    this.playgroundText,
    this.id,
  }) {
    craftapaloozaImage =
        craftapaloozaImage ?? ImageConstant.img01Raveendranpanikkarvellora;
    craftapaloozaText = craftapaloozaText ?? "Craftapalooza";
    participatingText = participatingText ?? "3k+ Participating";
    playgroundText = playgroundText ?? "Playground";
    id = id ?? "";
  }

  String? craftapaloozaImage;

  String? craftapaloozaText;

  String? participatingText;

  String? playgroundText;

  String? id;
}

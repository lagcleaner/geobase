part of 'sliding_up_panel_cubit.dart';

@freezed
class SlidingUpPanelState with _$SlidingUpPanelState {
  const factory SlidingUpPanelState.collapsed() = _Collapsed;
  const factory SlidingUpPanelState.hiden() = _Hiden;
  const factory SlidingUpPanelState.detailsPanel({
    required int geodataId,
  }) = _DetailsPanel;
  const factory SlidingUpPanelState.newPanel({
    required LatLng ubication,
  }) = _AddNewPanel;
}

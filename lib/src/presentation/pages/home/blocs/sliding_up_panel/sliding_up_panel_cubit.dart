import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/entities/entities.dart';
import 'package:latlong2/latlong.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'sliding_up_panel_state.dart';
part 'sliding_up_panel_cubit.freezed.dart';

@injectable
class SlidingUpPanelCubit extends Cubit<SlidingUpPanelState> {
  SlidingUpPanelCubit() : super(const SlidingUpPanelState.collapsed());

  PanelController panelController = PanelController();

  Future<void> markerTouched(IMarkable marker) async {
    if (panelController.isAttached && marker.id != null) {
      if (!panelController.isPanelShown) {
        await panelController.show();
      }
      await panelController.open();
      if (marker.id != null) {
        emit(SlidingUpPanelState.detailsPanel(geodataId: marker.id!));
      }
    }
  }

  Future<void> openNewPanel(LatLng posx) async {
    if (panelController.isAttached) {
      if (!panelController.isPanelShown) {
        await panelController.show();
      }
      await panelController.open();
      emit(SlidingUpPanelState.newPanel(ubication: posx));
    }
  }

  Future<void> closePanel() async {
    if (panelController.isAttached) {
      await panelController.close();
      emit(const SlidingUpPanelState.collapsed());
    }
  }

  Future<void> hidePanel() async {
    if (panelController.isAttached) {
      await panelController.hide();
      emit(const SlidingUpPanelState.hiden());
    }
  }
}

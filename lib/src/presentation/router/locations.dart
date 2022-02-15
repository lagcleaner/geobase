import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';
import 'package:geobase/src/presentation/pages/pages.dart';
import 'package:latlong2/latlong.dart';

const String LAT_PARAM = 'lat';
const String LNG_PARAM = 'lng';
const String CATEGORY_ID_PARAM = 'category';

const String DATA_ID = 'data_id';
const String CATEGORY_ID = 'category_id';
const String FIELD_TYPE_ID = 'field_type_id';

extension _BeamStateParams on BeamState {
  LatLng? get ubication {
    final lat = double.tryParse(queryParameters[LAT_PARAM] ?? '');
    final lng = double.tryParse(queryParameters[LNG_PARAM] ?? '');
    if (lat != null && lng != null) return LatLng(lat, lng);
  }

  int? get dataId {
    return int.tryParse(pathParameters[DATA_ID] ?? '');
  }

  int? get fieldTypeId {
    return int.tryParse(pathParameters[FIELD_TYPE_ID] ?? '');
  }

  int? get categoryId {
    return int.tryParse(pathParameters[CATEGORY_ID] ?? '') ??
        int.tryParse(queryParameters[CATEGORY_ID_PARAM] ?? '');
  }

  bool contains(int index, String match) {
    if (uri.pathSegments.length <= index) return false;

    return uri.pathSegments[index] == match;
  }

  bool lenGreaterThan(int len) => uri.pathSegments.length > len;
}

class HomeLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => [
        '/map',
        // '/map?lat=xx.xx&lng=xx.xx',
      ];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    BeamState state,
  ) {
    return [
      HomePage.getPage(context, initialLocation: state.ubication),
    ];
  }
}

class OptionsLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => [
        '/options',
        '/options/mapserver',
      ];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    BeamState state,
  ) {
    return [
      OptionsPage.getPage(context),
      if (state.contains(1, 'mapserver')) MapServerPage.getPage(context),
    ];
  }
}

class StaticSelectionLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => [
        '/staticselection',
        '/staticselection/new',
        '/staticselection/:$FIELD_TYPE_ID',
      ];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    BeamState state,
  ) {
    return [
      StaticSelectionListPage.getPage(context),
      if (state.fieldTypeId != null)
        StaticSelectionViewPage.getPage(context, state.fieldTypeId!)
      else if (state.contains(1, 'new'))
        StaticSelectionNewPage.getPage(context),
    ];
  }
}

class CategoriesLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => [
        '/categories',
        '/categories/new',
        '/categories/:$CATEGORY_ID',
        '/categories/:$CATEGORY_ID/edit',
      ];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    BeamState state,
  ) {
    return [
      CategoriesPage.getPage(context),
      if (state.lenGreaterThan(1))
        if (state.contains(1, 'new'))
          CategoryNewPage.getPage(context)
        else if (state.categoryId != null) ...[
          CategoryViewPage.getPage(context, state.categoryId!),
          if (state.contains(2, 'edit'))
            CategoryEditPage.getPage(context, state.categoryId!),
        ]
    ];
  }
}

class GeodataLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => [
        '/geodata',
        '/geodata/new',
        // '/geodata/new?lat=<xx.xx>&lng=<xx.xx>&category=<id>',
        '/geodata/:$DATA_ID',
        '/geodata/:$DATA_ID/edit',
      ];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    BeamState state,
  ) {
    return [
      GeodataPage.getPage(context),
      if (state.lenGreaterThan(1))
        if (state.contains(1, 'new'))
          GeodataNewPage.getPage(context, state.ubication, state.categoryId)
        else if (state.dataId != null) ...[
          GeodataViewPage.getPage(context, state.dataId!),
          if (state.contains(2, 'edit'))
            GeodataEditPage.getPage(context, state.dataId!),
        ]
    ];
  }
}

class NotFoundLocation extends BeamLocation {
  @override
  List<String> get pathPatterns => ['/*'];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    RouteInformationSerializable state,
  ) {
    return [
      NotFoundPage.getPage(context, state.routeInformation.location ?? ''),
    ];
  }
}

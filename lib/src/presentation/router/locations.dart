import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';
import 'package:geobase/src/presentation/pages/categories/category_view_page.dart';
import 'package:geobase/src/presentation/pages/geodata/geodata_view_page.dart';
import 'package:geobase/src/presentation/pages/pages.dart';
import 'package:latlong2/latlong.dart';

const String LAT_PARAM = 'lat';
const String LNG_PARAM = 'lng';
const String LOCATION = 'location';

const String DATA_ID = 'data_id';
const String CATEGORY_ID = 'category_id';

extension _BeamStateParams on BeamState {
  LatLng? get ubication {
    final lat = double.tryParse(queryParameters[LAT_PARAM] ?? '');
    final lng = double.tryParse(queryParameters[LNG_PARAM] ?? '');
    if (lat != null && lng != null) return LatLng(lat, lng);
  }

  int? get dataId {
    return int.tryParse(pathParameters[DATA_ID] ?? '');
  }

  int? get categoryId {
    return int.tryParse(pathParameters[CATEGORY_ID] ?? '');
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
        // '/map?location=', //TODO: Test if is working well
        '/options',
      ];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    BeamState state,
  ) {
    return [
      if (state.contains(0, 'map'))
        HomePage.getPage(context, initialLocation: state.ubication),
      if (state.contains(0, 'options')) OptionsPage.getPage(context),
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

class GeoDataLocation extends BeamLocation<BeamState> {
  @override
  List<String> get pathPatterns => [
        '/geodata',
        '/geodata/new',
        '/geodata/:$DATA_ID',
        '/geodata/:$DATA_ID/edit',
      ];

  @override
  List<BeamPage> buildPages(
    BuildContext context,
    BeamState state,
  ) {
    final locationData = data as LatLng?;
    return [
      GeoDataPage.getPage(context),
      if (state.lenGreaterThan(1))
        if (state.contains(1, 'new'))
          GeoDataNewPage.getPage(context, locationData)
        else if (state.dataId != null) ...[
          GeoDataViewPage.getPage(context, state.dataId!),
          if (state.contains(2, 'edit'))
            GeoDataEditPage.getPage(context, state.dataId!),
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

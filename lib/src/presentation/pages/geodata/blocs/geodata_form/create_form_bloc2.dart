import 'package:dartz/dartz.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

import 'package:geobase/injection.dart';
import 'package:geobase/src/domain/services/services.dart';

@Injectable()
class CategoryCreateFormBloc extends FormBloc<Unit, String> {
  CategoryCreateFormBloc({
    required this.categoryService,
    required this.locationService,
  });

  final ICategoryService categoryService;

  final ILocationReaderService locationService;

  @override
  void onLoading() {
    super.onLoading();
  }

  @override
  void onSubmitting() {
    // TODO: implement onSubmitting
  }
}

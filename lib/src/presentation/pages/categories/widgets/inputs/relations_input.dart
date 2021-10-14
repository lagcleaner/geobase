import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geobase/src/domain/core/enums/field_type_enum.dart';
import 'package:geobase/src/domain/core/extensions/extensions.dart';
import 'package:geobase/src/domain/entities/categories/category.dart';
import 'package:geobase/src/presentation/core/utils/textcontroller_extensions.dart';
import 'package:geobase/src/presentation/core/widgets/basic_inputs/input_widget.dart';
import 'package:geobase/src/presentation/core/widgets/widgets.dart';
import 'package:geobase/src/presentation/pages/categories/blocs/blocs.dart';
import 'package:get_it/get_it.dart';

class RelationsInputWidget extends StatefulWidget {
  const RelationsInputWidget({
    Key? key,
    this.onAdd,
    this.onRemoveWithName,
    this.onClear,
    this.relations = const {},
    this.errorText,
  }) : super(key: key);

  final Function(String, int)? onAdd;
  final Function(String)? onRemoveWithName;
  final Function()? onClear;

  //
  final Map<String, int> relations;

  final String? errorText;
  //TODO: SHOW THIS ERROR TEXT SOME WHERE

  @override
  State<RelationsInputWidget> createState() =>
      _PathologicalHistoryInputWidgetState();
}

class _PathologicalHistoryInputWidgetState extends State<RelationsInputWidget> {
  @override
  Widget build(BuildContext context) {
    final relationsCubit = GetIt.I<RelationsCubit>()..loadCategories();
    return BlocBuilder<RelationsCubit, RelationsState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Relaciones'),
            const SizedBox(height: 10),
            // field name Input
            TextInputWidget(
              controller: TextEditingCustom.fromValue(state.name),
              onChanged: relationsCubit.changeName,
              labelText: 'Nombre del campo*',
            ),
            const SizedBox(height: 10),
            // category Input
            _SelectCategoryInput(
              value: state.selected,
              items: state.categories,
              onChanged: relationsCubit.changeCategory,
            ),
            const SizedBox(height: 10),
            // Add Button
            ElevatedButton(
              onPressed: state.selected != null &&
                      state.name != '' &&
                      widget.relations[state.name] == null
                  ? () {
                      widget.onAdd?.call(state.name, state.selected!);
                      relationsCubit.clear();
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 3,
              children: widget.relations.entries
                  .map(
                    (e) => Chip(
                      padding: const EdgeInsets.all(3),
                      label: Text(e.key),
                      onDeleted: () => widget.onRemoveWithName?.call(e.key),
                    ),
                  )
                  .toList(),
            ),
          ],
        );
      },
    );
  }
}

class _SelectCategoryInput extends StatelessWidget {
  const _SelectCategoryInput({
    Key? key,
    this.value,
    required this.onChanged,
    required this.items,
  }) : super(key: key);

  final int? value;
  final List<CategoryGetEntity> items;
  final void Function(int? categoryId) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<int>(
      items: items.map((CategoryGetEntity categ) {
        return DropdownMenuItem(
          value: value,
          child: Row(
            children: <Widget>[
              Text(categ.name),
            ],
          ),
        );
      }).toList(),
      onChanged: onChanged,
      value: value,
      decoration: TextFieldDecorations.decoration(
        labelText: 'Categoría*',
      ),
    );
  }
}

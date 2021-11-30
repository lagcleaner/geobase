import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyIconPickerDialog extends StatefulWidget {
  const MyIconPickerDialog({
    Key? key,
    this.title,
    this.cancelBtn,
    this.iconCollection,
    this.enableSearch = true,
    this.searchHint,
  }) : super(key: key);

  final String? title;
  final String? cancelBtn;
  final bool enableSearch;
  final String? searchHint;
  final Map<String, IconData>? iconCollection;

  @override
  _IconPickerDialogState createState() => _IconPickerDialogState();
}

class _IconPickerDialogState extends State<MyIconPickerDialog> {
  final TextEditingController _oCtrlSearchQuery = TextEditingController();
  List<MapEntry<String, IconData>> _mIconsShow = [];
  int _iQtIcons = -1;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();

    _oCtrlSearchQuery.addListener(() {
      if (_debounce?.isActive ?? false) _debounce!.cancel();
      _debounce = Timer(const Duration(milliseconds: 600), () {
        _search();
      });
    });
    _loadIcons();
  }

  @override
  void dispose() {
    _oCtrlSearchQuery.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: _title(),
      content: _content(),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(widget.cancelBtn ?? 'CANCEL'),
        ),
      ],
    );
  }

  Widget _title() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(widget.title ?? 'Select an icon'),
        TextField(
          controller: _oCtrlSearchQuery,
          decoration: InputDecoration(
            icon: const Icon(Icons.search),
            hintText: widget.searchHint ?? 'Search icon',
          ),
        ),
      ],
    );
  }

  Widget _content() {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_iQtIcons == -1)
            Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Theme.of(context).primaryColor,
              ),
            ),
          if (_iQtIcons == 0)
            const Center(
              child: Text('No se encontraron iconos\n con el nombre entrado.'),
            ),
          if (_iQtIcons > 0)
            Wrap(
              spacing: 10,
              children: _mIconsShow
                  .map(
                    (e) => IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          {'name': e.key, 'icon': e.value},
                        );
                      },
                      icon: Icon(e.value),
                    ),
                  )
                  .toList(),
            ),
        ],
      ),
    );
  }

  void _loadIcons() {
    setState(() {
      _mIconsShow = (widget.iconCollection ?? <String, IconData>{})
          .entries
          .take(150)
          .toList();
      _iQtIcons = _mIconsShow.length;
    });
  }

  void _search() {
    final String lsQuery = _oCtrlSearchQuery.text;

    if (lsQuery.isNotEmpty) {
      lsQuery.toLowerCase();

      setState(() {
        var amount = 100;
        _mIconsShow = widget.iconCollection?.entries
                .where((e) => e.key.contains(lsQuery))
                .takeWhile((value) => amount-- != 0)
                .toList() ??
            [];

        _iQtIcons = _mIconsShow.length;
      });
    } else {
      _loadIcons();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:sc_02/themes/app_theme.dart';

class FilterWidget extends StatefulWidget {
  final List<String> chipsValues;
  final int selectedValue;
  FilterWidget({required this.chipsValues, this.selectedValue = 2});

  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  int? _value;

  @override
  void initState() {
    _value = widget.selectedValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                top: 12.0,
                bottom: 12.0,
              ),
              child: Text(
                'Select type',
                style: AppTheme.of(context).theme.textTheme.bodyText2,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 60.0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.chipsValues.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ChoiceChip(
                    selectedColor: AppThemeData.chipBackColor,
                    shape: StadiumBorder(
                      side: BorderSide(
                          color: _value == index
                              ? AppThemeData.violet200.withAlpha(50)
                              : AppThemeData.transparentColor,
                          width: 1),
                    ),
                    label: Text(
                      '${widget.chipsValues[index]}',
                      style: AppTheme.of(context)
                          .theme
                          .textTheme
                          .bodyText1
                          ?.copyWith(
                              color: _value == index
                                  ? AppThemeData.violet700
                                  : AppThemeData.black26),
                    ),
                    selected: _value == index,
                    onSelected: (bool selected) {
                      setState(() {
                        _value = selected ? index : null;
                      });
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

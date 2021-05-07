import 'package:flutter/material.dart';

import 'package:sc_02/themes/app_theme.dart';

class AppDivider extends StatelessWidget {
  AppDivider({this.indent = 17.0, this.endIndent = 18.0});
  final double indent;
  final double endIndent;

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: indent,
      endIndent: endIndent,
      thickness: 1.0,
      height: 1.0,
      color: AppTheme.of(context).gray300,
    );
  }
}

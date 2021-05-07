import 'package:flutter/material.dart';

import 'package:sc_02/themes/app_theme.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  MainAppBar() : preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  final Size preferredSize;

  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1.0,
      backgroundColor: AppTheme.of(context).white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: AppTheme.of(context).black.withOpacity(0.6),
        onPressed: () {},
      ),
      title: Text(
        'Profile',
        style: AppTheme.of(context).theme.textTheme.headline6,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.more_vert),
          color: AppTheme.of(context).black.withOpacity(0.6),
          onPressed: () {},
        ),
      ],
    );
  }
}

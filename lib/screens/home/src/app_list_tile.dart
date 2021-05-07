import 'package:flutter/material.dart';

import 'package:sc_02/themes/app_theme.dart';
import 'package:sc_02/components/app_circle_avatar.dart';
import 'package:sc_02/models/profile.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    required this.user,
  });

  final Profile user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AppCircleAvatar(photoUrl: user.photoUrl, radius: 20),
      title: Text(
        user.name,
        style: AppTheme.of(context).theme.textTheme.subtitle1,
      ),
      subtitle: Text(
        user.position,
        style: AppTheme.of(context).theme.textTheme.bodyText1?.copyWith(
              color: AppTheme.of(context).black26,
            ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.close,
          size: 28.0,
          color: AppTheme.of(context).red200,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
    );
  }
}

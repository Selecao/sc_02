import 'package:flutter/material.dart';
import 'package:sc_02/themes/app_theme.dart';

import 'package:sc_02/components/app_circle_avatar.dart';
import 'package:sc_02/models/profile.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({this.profile});
  final Profile? profile;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              AppCircleAvatar(
                photoUrl: profile?.photoUrl,
                radius: 59.0,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 36, maxHeight: 36),
                child: FloatingActionButton(
                  backgroundColor: AppTheme.of(context).violet700,
                  elevation: 0.0,
                  shape: StadiumBorder(
                    side:
                        BorderSide(color: AppTheme.of(context).white, width: 1),
                  ),
                  child: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Text(
          '${profile?.name ?? 'ERROR'}',
          style: AppTheme.of(context).theme.textTheme.subtitle1,
        ),
        Text(
          '${profile?.position ?? 'ERROR'}',
          style: AppTheme.of(context)
              .theme
              .textTheme
              .caption
              ?.copyWith(color: AppTheme.of(context).gray600),
        ),
        Container(height: 24.0),
      ],
    );
  }
}

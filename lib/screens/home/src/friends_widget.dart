import 'package:flutter/material.dart';
import 'package:sc_02/components/app_divider.dart';

import 'package:sc_02/models/profile.dart';
import 'package:sc_02/screens/home/src/app_list_tile.dart';
import 'package:sc_02/themes/app_theme.dart';

class FriendsWidget extends StatelessWidget {
  const FriendsWidget({
    required List<Profile> friendList,
  }) : _friendList = friendList;

  final List<Profile> _friendList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.0, top: 12.0),
              child: Text(
                'Friends',
                style: AppTheme.of(context).theme.textTheme.bodyText2,
              ),
            ),
          ],
        ),
        ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: _friendList.length,
          padding: EdgeInsets.only(left: 16.0),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                AppListTile(user: _friendList[index]),
                index == (_friendList.length - 1)
                    ? Container()
                    : AppDivider(indent: 56.0, endIndent: 0.0),
              ],
            );
          },
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: OutlinedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ADD FRIEND',
                    style: AppTheme.of(context).theme.textTheme.button,
                  ),
                  Container(width: 13.0),
                  Icon(Icons.add,
                      size: 28.0, color: AppTheme.of(context).black),
                ],
              ),
              onPressed: () {}),
        ),
      ],
    );
  }
}

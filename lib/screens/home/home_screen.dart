import 'package:flutter/material.dart';
import 'package:sc_02/components/app_divider.dart';

import 'package:sc_02/screens/home/src/gallery_widget.dart';
import 'package:sc_02/screens/home/src/friends_widget.dart';
import 'package:sc_02/components/main_app_bar.dart';
import 'package:sc_02/screens/home/src/profile_widget.dart';
import 'package:sc_02/models/profile.dart';
import 'package:sc_02/repository/fonts_repository.dart';
import 'package:sc_02/repository/images_repository.dart';
import 'package:sc_02/repository/users_repository.dart';
import 'package:sc_02/screens/home/src/filter_widget.dart';
import 'package:sc_02/themes/app_theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Profile? _currentUser;

  List<Profile> _friendList = [];

  List<String> _fontTypes = [];

  List<String> _networkImages = [];

  void _getData() {
    final UsersRepository _usersRepository = UsersRepository();
    _currentUser = _usersRepository.getCurrentUser();
    _friendList = _usersRepository.getUsers();
    _fontTypes = FontsRepository().getFontTypes();
    _networkImages = ImagesRepository().getImages();
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      backgroundColor: AppThemeData.gray200,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ProfileWidget(profile: _currentUser),
            AppDivider(),
            FilterWidget(chipsValues: _fontTypes, selectedValue: 2),
            AppDivider(),
            FriendsWidget(friendList: _friendList),
            AppDivider(),
            GalleryWidget(networkImages: _networkImages),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sc_02/themes/app_theme.dart';

class AppCircleAvatar extends StatelessWidget {
  const AppCircleAvatar({
    required this.photoUrl,
    required this.radius,
  });

  final String? photoUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      child:
          photoUrl == null ? Icon(Icons.camera_alt, size: radius) : Container(),
      backgroundImage: photoUrl != null ? NetworkImage(photoUrl!) : null,
      backgroundColor: AppTheme.of(context).violet500,
    );
  }
}

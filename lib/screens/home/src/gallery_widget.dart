import 'package:flutter/material.dart';

import 'package:sc_02/components/app_checkbox.dart';
import 'package:sc_02/themes/app_theme.dart';

class GalleryWidget extends StatelessWidget {
  GalleryWidget({
    required this.networkImages,
  });

  final List<String> networkImages;

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.0, top: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'My media',
                style: AppTheme.of(context).theme.textTheme.headline5,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: _screenWidth,
            child: CustomScrollView(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              slivers: [
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: _screenWidth / 3,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0,
                    childAspectRatio: 1.0,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) =>
                        GalleryItem(networkImage: networkImages[index]),
                    childCount: networkImages.length,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 40.0,
          ),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: AppTheme.of(context).appElevatedButtonStyle,
                  child: Text(
                    'DELETE',
                  ),
                ),
              ),
              Container(width: 16.0),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'ADD',
                    style:
                        AppTheme.of(context).theme.textTheme.button?.copyWith(
                              color: AppThemeData.violet700,
                            ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class GalleryItem extends StatelessWidget {
  GalleryItem({required this.networkImage});

  final String networkImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment(0.8, -0.8),
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(networkImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(6.44),
            ),
          ),
          Visibility(
            visible: true,
            child: AppCheckbox(isChecked: true),
          ),
        ],
      ),
    );
  }
}

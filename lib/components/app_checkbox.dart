import 'package:flutter/material.dart';

class AppCheckbox extends StatefulWidget {
  final bool isChecked;
  final double size;
  final double iconSize;
  AppCheckbox({this.isChecked = false, this.size = 24.0, this.iconSize = 16.0});
  @override
  _AppCheckboxState createState() => _AppCheckboxState();
}

class _AppCheckboxState extends State<AppCheckbox> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: ShapeDecoration(
          color: _isSelected ? Color(0xFFCF6679) : Colors.grey,
          shape: StadiumBorder(
            side: BorderSide(color: Colors.white, width: 1.0),
          ),
        ),
        width: widget.size,
        height: widget.size,
        child: _isSelected
            ? Icon(
                Icons.close,
                size: widget.iconSize,
                color: Colors.white,
              )
            : Container(),
      ),
    );
  }
}

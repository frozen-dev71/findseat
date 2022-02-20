import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MySvgImage extends StatelessWidget {
  String path;
  double width;
  double height;
  Color color;
  bool applyColorFilter;

  MySvgImage({
    required this.path,
    required this.width,
    required this.height,
    this.color = Colors.white,
    this.applyColorFilter = true,
  });

  MySvgImage.toolbarIcon(
    this.path, {
    this.width = 20,
    this.height = 20,
    this.applyColorFilter = true,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return applyColorFilter
        ? SvgPicture.asset(
            path,
            width: width,
            height: height,
            color: color,
          )
        : SvgPicture.asset(
            path,
            width: width,
            height: height,
          );
  }
}

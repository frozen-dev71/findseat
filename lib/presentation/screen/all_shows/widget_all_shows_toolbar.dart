import 'package:find_seat/presentation/common_widgets/barrel_common_widgets.dart';
import 'package:find_seat/presentation/custom_ui/svg_image.dart';
import 'package:find_seat/utils/my_const/my_const.dart';
import 'package:flutter/material.dart';

class WidgetAllShowsToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: COLOR_CONST.BLUE,
      height: 50,
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 10),
              child: MySvgImage(
                width: 19,
                height: 16,
                path: 'assets/ic_back.svg',
              ),
            ),
          ),
          Expanded(
            child:
                Text('Movies in coimbatore', style: FONT_CONST.MEDIUM_WHITE_16),
          ),
          _buildActions(),
        ],
      ),
    );
  }

  _buildActions() {
    return Row(
      children: <Widget>[
        MySvgImage(
          path: "assets/ic_search.svg",
          width: 20,
          height: 20,
        ),
        WidgetSpacer(width: 12),
        MySvgImage(
          path: "assets/ic_more.svg",
          width: 20,
          height: 20,
        ),
        WidgetSpacer(width: 12)
      ],
    );
  }
}

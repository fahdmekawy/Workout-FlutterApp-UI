import 'package:flutter/material.dart';
import 'package:workout_app/screens/train_screen.dart';

import 'dot_widget.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            dotWidget(),
            SizedBox(
              width: 5,
            ),
            dotWidget()
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            dotWidget(),
            SizedBox(
              width: 5,
            ),
            dotWidget()
          ],
        ),
      ],
    );
  }
}

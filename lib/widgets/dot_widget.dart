import 'package:flutter/material.dart';

import '../constants.dart';

class dotWidget extends StatelessWidget {
  const dotWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kFirstColor,
      ),
      // color: kFirstColor,
    );
  }
}

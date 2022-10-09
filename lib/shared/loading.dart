import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter/material.dart';
import 'package:postcrap/shared/constants.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child: Center(
        child: LoadingAnimationWidget.discreteCircle(
          color: textColor100,
          secondRingColor: primary100,
          thirdRingColor: success,
          size: 80),
      ),
    );
  }
}

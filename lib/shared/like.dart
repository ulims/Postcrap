import 'package:flutter/material.dart';
import 'package:postcrap/shared/constants.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton>
    with SingleTickerProviderStateMixin {
  bool isFav = false;
  late AnimationController _controller;
  late Animation<Color?> colorAnimation;
  late Animation<double> sizeAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    colorAnimation =
        ColorTween(begin: textColor20, end: primary100).animate(_controller);
    sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem(tween: Tween<double>(begin: 1, end: 2), weight: 10),
      TweenSequenceItem(tween: Tween<double>(begin: 2, end: 1), weight: 10),
    ]).animate(_controller);
    _controller.addStatusListener((status) {});

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          isFav = true;
        });
      }
      if (status == AnimationStatus.dismissed) {
        setState(() {
          isFav = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _) {
        return  GestureDetector(
          onTap: () {
           isFav ? _controller.reverse() : _controller.forward(); 
          },
          child: Transform.scale(
            scale: sizeAnimation.value,
            child: ImageIcon(
              const AssetImage(
                'assets/images/like.png',),
                size: 22,
                color: colorAnimation.value,
                ),
          ),
        );
      },
    );
  }
}


// hild: IconButton(
//             iconSize: 22,
//             onPressed: () {
//               isFav ? _controller.reverse() : _controller.forward();
//             },
//             icon: ScaleTransition(
//               scale: sizeAnimation,
//               child: ImageIcon(
//                 const AssetImage(
//                   'assets/images/like.png',
//                 ),
//                 color: colorAnimation.value,
//                 //size: 26,
//               ),
//             ),
//           ),

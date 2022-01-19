import 'dart:developer';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';


class ExtendedImagePage extends StatefulWidget {
  const ExtendedImagePage({Key? key}) : super(key: key);

  @override
  _ExtendedImageState createState() => _ExtendedImageState();
}

class _ExtendedImageState extends State<ExtendedImagePage>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ExtendedImage.asset('assets/images/rachel_davis.jpeg'),
        ExtendedImage.network('https://picsum.photos/id/106/400/300',
            width: 150, height: 200, fit: BoxFit.cover),
        ExtendedImage.network(
          'https://i.pravatar.cc/100?img=26',
          width: 100,
          height: 100,
          cache: false,
          fit: BoxFit.cover,
          shape: BoxShape.circle,
          loadStateChanged: (ExtendedImageState state) {
            switch (state.extendedImageLoadState) {
              case LoadState.loading:
                log("image file loading...");
                break;
              case LoadState.completed:
                log("image file load completed!!");
                _controller.forward();
                return FadeTransition(
                    opacity: _controller,
                    child: ExtendedRawImage(
                      image: state.extendedImageInfo?.image,
                      width: 100,
                      height: 100,
                    ));
              case LoadState.failed:
                log("image file load FAIL!!!");
                _controller.reset();
                break;
            }
          },
        ),
      ]),
    );
  }
}

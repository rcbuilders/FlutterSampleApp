import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgPage extends StatelessWidget {
  const SvgPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              'assets/icons/ic_sloth.svg',
              width: 160,
              height: 160,
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/ic_seal.svg',
                color: Colors.blueAccent,
              ),
              iconSize: 160,
            )
          ],
        ));
  }
}

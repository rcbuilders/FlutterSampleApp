import 'package:flutter/material.dart';

class TextThemeExampleScreen extends StatelessWidget {
  const TextThemeExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "스타일이 적용되지 않았습니다.",
            ),
            Text(
              "헤드라인3이 적용된 텍스트입니다.",
              style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontFamily: 'lefthand'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:bty/app/modules/intro/cta_button.dart';
import 'package:bty/app/modules/intro/input_box.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 260),
          Text(
            'Write the name of the challenge\nyou\'d like to stick with',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          InputBox(),
          Spacer(),
          CtaButton(),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}

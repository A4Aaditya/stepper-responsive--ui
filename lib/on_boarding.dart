import 'package:flutter/material.dart';
import 'package:new_login_signup/about_form.dart';
import 'package:new_login_signup/social_forms.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int step = 1;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        children: [
          // Side Area
          Visibility(
            visible: width > 900,
            child: Container(
              width: 350,
              padding: const EdgeInsets.all(50),
              height: double.maxFinite,
              color: Colors.blue,
              child: StepText(step: step),
            ),
          ),
          // Side Area

          // Main Area
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: 10,
                  child: LinearProgressIndicator(
                    value: step == 0 ? 0.1 : (step) / 3,
                    color: Colors.blue,
                    backgroundColor: Colors.white,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  height: width > 900 ? 0 : 150,
                  child: StepText(step: step),
                ),
                AnimatedPositioned(
                  height: step % 2 == 0 ? 0 : null,
                  top: step % 2 == 0 ? 1000 : 200,
                  duration: const Duration(milliseconds: 300),
                  child: SocialForm(next),
                ),
                AnimatedPositioned(
                  height: step % 2 == 0 ? null : 0,
                  top: step % 2 == 0 ? 200 : 1000,
                  duration: const Duration(milliseconds: 300),
                  child: AboutForm(next),
                ),
              ],
            ),
          ),
          // Main Area
        ],
      ),
    );
  }

  void next() {
    setState(() {
      step++;
    });
    if (step == 4) step = 1;
  }
}

class StepText extends StatelessWidget {
  const StepText({
    Key? key,
    required this.step,
  }) : super(key: key);

  final int step;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Step $step',
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 30),
        Text(
          'Fill Your Social Details',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}

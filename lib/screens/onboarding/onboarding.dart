import 'package:flutter/material.dart';
import 'package:flutter_onboarding_app_ui_design/screens/onboarding/components/onboard_page.dart';
import 'package:flutter_onboarding_app_ui_design/screens/onboarding/components/page_view_indicator.dart';
import 'package:flutter_onboarding_app_ui_design/screens/onboarding/data/onboard_page_data.dart';

class Onboarding extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        PageView.builder(
          controller: pageController,
          itemCount: onboardData.length,
          itemBuilder: (context, index) {
            return OnboardPage(
              pageController: pageController,
              pageModel: onboardData[index],
            );
          },
        ),
        Container(
          width: double.infinity,
          height: 70,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Text(
                    'fun with',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding:const EdgeInsets.only(bottom: 80,   left: 40),
            child: PageViewIndicator(
              controller: pageController,
              itemCount: onboardData.length,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

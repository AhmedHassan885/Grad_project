// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';
import 'package:grad_project/core/helper/navigator.dart';
import 'package:grad_project/core/resource_manager/app_assets.dart';
import 'package:grad_project/core/resource_manager/app_color.dart';
import 'package:grad_project/features/onboarding/signIn_register.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": AppAssets.on_Boarding1,
      "title": "Learn Today,\nLead Tomorrow.",
    },
    {
      "image": AppAssets.on_Boarding2,
      "title": "Building a Stronger \nFuture Through \nEducation.",
    },
    {
      "image": AppAssets.on_Boarding3,
      "title": "Discover. Learn. \nSucceed.",
    },
    {
      "image": AppAssets.on_Boarding4,
      "title": "Dive into Your First \nLesson!",
    },
  ];

  void _nextPage(BuildContext context) {
    if (_currentIndex < onboardingData.length - 1) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      navigateTo(context, screen: SignInAngRegister());
    }
  }

  void _skipToSignIn(BuildContext context) {
    navigateTo(context, screen: SignInAngRegister());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: onboardingData.length,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(
                image: onboardingData[index]["image"]!,
                title: onboardingData[index]["title"]!,
                onNext: () => _nextPage(context),
              );
            },
          ),
          Positioned(
            top: 40,
            right: 20,
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () => _skipToSignIn(context),
                child: Text(
                  "Skip",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onNext;

  const OnboardingPage(
      {required this.image, required this.title, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, fit: BoxFit.contain),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: AppColor.dark_blue),
          ),
          SizedBox(height: 70),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(15),
              backgroundColor: AppColor.dark_blue,
            ),
            onPressed: onNext,
            child: Icon(Icons.arrow_forward_ios_rounded,
                size: 30, color: Colors.white),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

List<Map<String, dynamic>> onboardingData = [
  {
    'title': 'Lorem ipsum dolor sit amet consectetur',
    'image': 'assets/images/19197204.jpg',
    'label':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
  },
  {
    'title': 'Lorem ipsum dolor sit amet sit ',
    'image': 'assets/images/18980.jpg',
    'label':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt .',
  },
  {
    'title': 'Lorem ipsum dolor sit amet',
    'image': 'assets/images/wavy.jpg',
    'label':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
  },
];

navigator(BuildContext context, Widget child) => Navigator.push(
      context,
      PageTransition(
          type: PageTransitionType.fade,
          child: child,
          inheritTheme: true,
          ctx: context),
    );

horDivider(BuildContext context) => Container(
    height: 1.h,
    color: Theme.of(context).colorScheme.secondary.withOpacity(0.5));

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishop/utils/constants.dart';

import 'screens/hmpgScreens/hm_page.dart';
import 'screens/onboardingScrns/onboarding_scrn.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(480, 810),
      builder: () => MaterialApp(
        title: 'Ishop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Quicksand',
            scaffoldBackgroundColor: AppColors.kScaffoldColor,
            primaryColor: AppColors.kPrimaryColor,
            colorScheme: const ColorScheme.light().copyWith(
                primary: AppColors.kPrimaryColor,
                secondary: AppColors.kSecondaryColor)),
        home: const Onboarding(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ishop/shared/form_builder.dart';
import 'package:ishop/shared/primary_button.dart';
import 'package:ishop/utils/utilities.dart';
import 'package:page_transition/page_transition.dart';

import '../../bottom_navigation.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35.h),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'I',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w800),
                      ),
                      TextSpan(
                        text: 'Shop',
                        style: TextStyle(
                            letterSpacing: 1.2,
                            //color: Theme.of(context).primaryColor,
                            fontSize: 38.sp,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 35.h),
              Text(
                'Login',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                style: TextStyle(
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(height: 45.h),
              const FormBuilder(
                label: 'EMAIL',
                hintText: 'johndoe@gmail.com',
              ),
              SizedBox(height: 20.h),
              const FormBuilder(
                label: 'PASSWORD',
                hintText: '*******',
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                            text: 'Forgot',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text: ' Password?',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ),
                ),
                onTap: () {},
              ),
              SizedBox(height: 70.h),
              Center(
                child: PrimaryButton(
                  label: 'LOGIN',
                  onTap: () => Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.fade,
                        child: const BottomNavigation(),
                        inheritTheme: true,
                        ctx: context),
                  ),
                ),
              ),
              SizedBox(height: 17.h),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0.0),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                        BorderSide(color: Theme.of(context).primaryColor)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 13.h, horizontal: 45.w),
                    child: Text(
                      'Sign In with Google',
                      style: TextStyle(
                        fontSize: 19.sp,
                        letterSpacing: 1.1,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 100.h),
              Center(
                child: GestureDetector(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                            text: 'Don`t have an account?',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                            text: ' Sign Up',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

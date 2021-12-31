import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormBuilder extends StatelessWidget {
  const FormBuilder({
    Key? key,
    required this.hintText,
    required this.label,
  }) : super(key: key);

  final String hintText;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
            fontSize: 14.sp,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        SizedBox(height: 10.h),
        Container(
          padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 12.w),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none, isDense: true, hintText: hintText),
          ),
        ),
      ],
    );
  }
}

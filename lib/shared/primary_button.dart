import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.label,
    required this.onTap,
    this.bordered = false,
  }) : super(key: key);

  final String label;
  final Function onTap;
  final bool bordered;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shadowColor: MaterialStateProperty.all(bordered
              ? Colors.white
              : Theme.of(context).colorScheme.secondary.withOpacity(0.3)),
          elevation: MaterialStateProperty.all(10),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            ),
          ),
          side: MaterialStateProperty.all(
              BorderSide(color: Theme.of(context).primaryColor)),
          backgroundColor: MaterialStateProperty.all(
              bordered ? Colors.white : Theme.of(context).primaryColor)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 110.w),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20.sp,
            letterSpacing: 1.3,
            fontWeight: FontWeight.w600,
            color: bordered ? Colors.black : Colors.white,
          ),
        ),
      ),
      onPressed: onTap as VoidCallback,
    );
  }
}

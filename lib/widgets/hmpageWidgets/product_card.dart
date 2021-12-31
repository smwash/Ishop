import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishop/models/product_model.dart';
import 'package:ishop/utils/constants.dart';
import 'package:line_icons/line_icons.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.w,
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      margin: EdgeInsets.only(right: 12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(product.image,
                height: 105.h, fit: BoxFit.fitHeight),
          ),
          SizedBox(height: 4.h),
          Text(product.name, style: TextStyles.kLabelStyle),
          SizedBox(height: 3.h),
          Text(
            product.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 3.h),
          Text('\$${product.price}', style: TextStyles.kLabelStyle),
          SizedBox(height: 3.h),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.star, size: 23.sp, color: Colors.amber),
                  Text(' ${product.rating}')
                ],
              ),
              SizedBox(width: 15.w),
              Row(
                children: [
                  Icon(LineIcons.comment,
                      size: 23.sp,
                      color: Theme.of(context).colorScheme.secondary),
                  Text(' ${product.reviews}')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

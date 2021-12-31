import 'dart:math';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishop/models/data.dart';
import 'package:ishop/utils/constants.dart';
import 'package:ishop/utils/utilities.dart';
import 'package:ishop/widgets/hmpageWidgets/all_products.dart';
import 'package:ishop/widgets/hmpageWidgets/deals_slider.dart';
import 'package:ishop/widgets/hmpageWidgets/product_card.dart';
import 'package:line_icons/line_icons.dart';

import 'product_categories.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: false,
        leadingWidth: 0.0,
        backgroundColor: Colors.white,
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'I',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 28.sp,
                    letterSpacing: 1.1,
                    fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: 'Shop',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.sp,
                    letterSpacing: 1.1,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(LineIcons.shoppingCart,
                size: 40.sp, color: Theme.of(context).colorScheme.secondary),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Consumer(
            builder: (context, ref, child) {
              final cat = ref.watch(mainCategoryProvider);
              return Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cat,
                      style: TextStyles.kTitleStyle,
                    ),
                    OpenContainer(
                        transitionType: ContainerTransitionType.fadeThrough,
                        closedBuilder: (context, openContainer) {
                          return IconButton(
                            icon: Icon(LineIcons.horizontalSliders,
                                color: Theme.of(context).primaryColor),
                            onPressed: openContainer,
                          );
                        },
                        openBuilder: (context, openContainer) {
                          return const ProductCategories();
                        })
                  ],
                ),
              );
            },
          ),
          horDivider(context),
          SizedBox(height: 11.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Consumer(
                    builder: (context, ref, child) {
                      final cats = ref.watch(categoriesNotifierProvider);
                      final category = ref.watch(subCategoryProvider);

                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Row(
                            children: List.generate(
                              cats.length,
                              (index) => GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.h, horizontal: 15.w),
                                  margin: EdgeInsets.only(right: 10.h),
                                  decoration: BoxDecoration(
                                    color: category == cats[index]
                                        ? Theme.of(context)
                                            .primaryColor
                                            .withOpacity(0.19)
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(19),
                                  ),
                                  child: Text(
                                    cats[index],
                                    style: TextStyle(
                                        color: category == cats[index]
                                            ? Theme.of(context).primaryColor
                                            : Colors.black,
                                        fontWeight: category == cats[index]
                                            ? FontWeight.w600
                                            : FontWeight.w500),
                                  ),
                                ),
                                onTap: () {
                                  ref.read(subCategoryProvider.notifier).state =
                                      cats[index];
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Popular Products', style: TextStyles.kTitleStyle),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'VIEW ALL',
                            style: TextStyles.kTitleStyle
                                .copyWith(fontSize: 15.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(height: 7.h),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.w),
                      child: Row(
                        children: List.generate(
                          5,
                          (index) => ProductCard(product: products[index]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child:
                        Text('Featured Brands', style: TextStyles.kTitleStyle),
                  ),
                  SizedBox(height: 10.h),
                  const DealsSlider(),
                  SizedBox(height: 12.h),
                  const AllProducts(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ishop/models/data.dart';

import 'product_card.dart';

class AllProducts extends ConsumerWidget {
  const AllProducts({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      crossAxisSpacing: 11.w,
      mainAxisSpacing: 7.h,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 7.h),
      itemCount: products.length,
      staggeredTileBuilder: (int i) => StaggeredTile.fit(1),
      itemBuilder: (context, index) {
        return ProductCard(product: products[index]);
      },
      // staggeredTileBuilder: (int index) =>
      //     StaggeredTile.count(2, index.isEven ? 2.5 : 1.9),
    );
  }
}

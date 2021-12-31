import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ishop/models/data.dart';

final mainCategoryProvider = StateProvider<String>((ref) {
  return categories[0]['category'];
});

final subCategoryProvider = StateProvider<String>((ref) {
  return ref.watch(categoriesNotifierProvider)[0];
});

final categoriesNotifierProvider =
    StateNotifierProvider<CategoriesNotifier, List<String>>((ref) {
  return CategoriesNotifier(ref.read);
});

class CategoriesNotifier extends StateNotifier<List<String>> {
  CategoriesNotifier(this._read) : super([]) {
    state = categories[0]['categories'];
  }

  final Reader _read;

  changeCategories() {
    final cat = _read(mainCategoryProvider);
    final list = categories.where((e) => e['category'] == cat).toList();
    state = list.first['categories'];
  }
}

class ProductCategories extends ConsumerWidget {
  const ProductCategories({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mainCategory = ref.watch(mainCategoryProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Theme.of(context).primaryColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Categories', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Wrap(
          spacing: 10.w,
          runSpacing: 15.h,
          alignment: WrapAlignment.center,
          children: categories
              .map(
                (e) => GestureDetector(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                    margin: EdgeInsets.only(right: 10.h),
                    decoration: BoxDecoration(
                      color: mainCategory == e['category']
                          ? Theme.of(context).primaryColor.withOpacity(0.19)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Text(
                      e['category'],
                      style: TextStyle(
                        color: mainCategory == e['category']
                            ? Theme.of(context).primaryColor
                            : Colors.black,
                        fontWeight: mainCategory == e['category']
                            ? FontWeight.w600
                            : FontWeight.w500,
                      ),
                    ),
                  ),
                  onTap: () {
                    ref.read(mainCategoryProvider.notifier).state =
                        e['category'];
                    ref
                        .read(categoriesNotifierProvider.notifier)
                        .changeCategories();
                    Navigator.pop(context);
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

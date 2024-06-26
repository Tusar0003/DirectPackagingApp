import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/constants.dart';
import '../../../../models/entities/filter_sorty_by.dart';
import '../../../../models/index.dart';
import '../../../app.dart';
import '../../../common/tools/price_tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/filter_product_params.dart';
import '../../../modules/dynamic_layout/config/product_config.dart';
import '../../../services/service_config.dart';
import '../../../widgets/backdrop/backdrop_menu.dart';
import '../../../widgets/common/drag_handler.dart';
import '../widgets/filter_label.dart';

part 'getter_extension.dart';
part 'methods_extension.dart';
part 'widget_extension.dart';

mixin ProductsFilterMixin {
  String get lang;

  FilterAttributeModel get filterAttrModel;

  CategoryModel get categoryModel;

  TagModel get tagModel;

  ProductPriceModel get productPriceModel;

  Future<void> getProductList({bool forceLoad = false});

  void clearProductList();

  /// Call setState(() {}) or notifyListener().
  void rebuild();

  void onCloseFilter();

  void onCategorySelected(String? name);

  void onClearTextSearch();

  /// Filter params.
  List<String>? categoryIds;
  double? minPrice;
  double? maxPrice;
  int page = 1;
  List<String>? tagIds;
  String? attribute;
  String? listingLocationId;
  List? include;
  String? search;
  bool? isSearch;

  FilterSortBy filterSortBy = const FilterSortBy();

  bool get enableSearchHistory => false;

  bool get shouldShowLayout => enableSearchHistory ? false : true;
}

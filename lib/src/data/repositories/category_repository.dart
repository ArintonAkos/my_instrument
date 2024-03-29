import 'dart:convert';

import 'package:my_instrument/src/data/data_providers/constants/category_constants.dart';
import 'package:my_instrument/src/data/data_providers/services/category_cache_manager.dart';
import 'package:my_instrument/src/data/data_providers/services/category_filter_cache_manager.dart';
import 'package:my_instrument/src/data/data_providers/services/category_service.dart';
import 'package:my_instrument/src/data/models/responses/main/category/filter_model.dart';
import 'package:my_instrument/src/data/models/responses/main/category/get_category_children_response.dart';
import 'package:my_instrument/src/data/models/responses/main/category/category_model.dart';
import 'package:my_instrument/src/data/models/responses/main/category/get_category_filters_response.dart';
import 'package:my_instrument/structure/dependency_injection/injector_initializer.dart';

class CategoryRepository {
  final CategoryService _categoryService = appInjector.get<CategoryService>();
  final CategoryCacheManager _categoryCacheManager = appInjector.get<CategoryCacheManager>();
  final CategoryFilterCacheManager _categoryFilterCacheManager = appInjector.get<CategoryFilterCacheManager>();

  Future<CategoryModel> getAllCategoriesWithAllChildren() async {
    var cacheFile = await _categoryCacheManager.getCategoryFromCache();

    if (cacheFile != null) {
      return cacheFile;
    }

    var res = await _categoryService.getAllCategoriesWithAllChildren();

    if (res.ok) {
      res = (res as GetCategoryChildrenResponse);
      await _categoryCacheManager.saveCategoryToCache(res.data);
      return res.data;
    }

    throw Exception(res.message);
  }

  Future<CategoryModel> getCategoryWithAllChildren(int categoryId) async {
    var res = await _categoryService.getCategoryWithAllChildren(categoryId);

    if (res.ok) {
      return (res as GetCategoryChildrenResponse).data;
    }

    throw Exception(res.message);
  }

  Future<List<CategoryModel>> getCategoryWithChildren(int categoryId) async {
    var res = await _categoryService.getCategoryWithChildren(categoryId);

    if (res.ok) {
      return (res as GetCategoryChildrenResponse).data.children;
    }

    throw Exception(res.message);
  }

  Future<List<FilterModel>> getCategoryFilters(int categoryId) async {
    var cacheFile = await _categoryFilterCacheManager.getCategoryFiltersFromCache(categoryId);

    if (cacheFile != null) {
      return cacheFile;
    }

    var res = await _categoryService.getCategoryFilters(categoryId);

    if (res.ok) {
      res = (res as GetCategoryFiltersResponse);
      await _categoryFilterCacheManager.saveCategoryFiltersToCache(res.filters, categoryId);
      return res.filters;
    }

    throw Exception(res.message);
  }
}
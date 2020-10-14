import 'package:todoapp/modules/category.dart';
import 'package:todoapp/repositories/repository.dart';

class CategoryService {
  Repository _repository;
  CategoryService() {
    _repository = Repository();
  }
  saveCategory(Category category) async {
    return await _repository.insertData('categories', category.categoryMap());
  }

  readCategories() async {
    return await _repository.readData('categories');
  }

  readCategoryByID(categoryID) async {
    return await _repository.readDataByID("categories", categoryID);
  }

  updateCategory(Category category) async {
    return await _repository.updateData('categories', category.categoryMap());
  }

  deleteCategory(categoryID) async {
    return await _repository.deleteData('categories', categoryID);
  }
}

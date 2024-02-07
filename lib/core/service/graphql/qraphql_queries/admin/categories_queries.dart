import 'package:asroo_store/features/admin/add_categories/data/models/create_category_request_body.dart';

class CategoriesQueries {
  factory CategoriesQueries() {
    return _instance;
  }
  const CategoriesQueries._();

  static const CategoriesQueries _instance = CategoriesQueries._();

//Categories get all
  Map<String, dynamic> getAllCategoriesMapQuery() {
    return {
      'query': '''
            {
            categories{
              id
              name
              image
            }
          }
      ''',
    };
  }

  Map<String, dynamic> createMapQuery({
    required CreateCategoryRequestBody body,
  }) {
    return {
      'query': r'''
          mutation Create($name: String!, $image: String!) {
            addCategory(
              data: {name: $name, image: $image}
            ) {
              id
              name
              image
            }
          }
        ''',
      'variables': {
        'name': body.name,
        'image': body.image,
      },
    };
  }

  Map<String, dynamic> deleteMapQuery({
    required String categoryId,
  }) {
    return {
      'query': '''
            mutation DeleteCategory($categoryId: ID!) {
              deleteCategory(id: $categoryId)
            }
      ''',
      'variables': {
        'categoryId': categoryId,
      },
    };
  }
}

class DashBoardQueries {
  factory DashBoardQueries() {
    return _instance;
  }
  const DashBoardQueries._();

  static const DashBoardQueries _instance = DashBoardQueries._();

//Products
  Map<String, dynamic> numberOfProductsMapQuery() {
    return {
      'query': '''
            {
            products{
              title
            }
          }
      ''',
    };
  }

//Products
  Map<String, dynamic> numberOfCategoriesMapQuery() {
    return {
      'query': '''
            {
            categories{
              name
            }
          }
      ''',
    };
  }

//Products
  Map<String, dynamic> numberOfUsersMapQuery() {
    return {
      'query': '''
            {
            users{
              name
            }
          }
      ''',
    };
  }
}

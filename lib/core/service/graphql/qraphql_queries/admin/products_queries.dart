class ProductsQueries {
  factory ProductsQueries() {
    return _instance;
  }
  const ProductsQueries._();

  static const ProductsQueries _instance = ProductsQueries._();

  //Product get all
  Map<String, dynamic> getAllProductsMapQuery() {
    return {
      'query': '''
            {
            products{
              id
              title
              price
              images
              description
              category{
                id
                name
                }
            }
          }
      ''',
    };
  }
}

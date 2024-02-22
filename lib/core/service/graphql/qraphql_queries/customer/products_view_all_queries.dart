class ProductViewAllQueries {
  factory ProductViewAllQueries() {
    return _instance;
  }
  const ProductViewAllQueries._();

  static const ProductViewAllQueries _instance = ProductViewAllQueries._();

  //Product Details
  Map<String, dynamic> getProductsViewAllMapQuery({required int offset}) {
    return {
      'query': '''
           {
          products(limit: 6, offset:$offset) {
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
        },
  
      ''',
    };
  }
}

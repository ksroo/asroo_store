class ProductDetailsQueries {
  factory ProductDetailsQueries() {
    return _instance;
  }
  const ProductDetailsQueries._();

  static const ProductDetailsQueries _instance = ProductDetailsQueries._();

  //Product Details
  Map<String, dynamic> getProductDetailsMapQuery({required int id}) {
    return {
      'query': r'''
           {
          product(id: $id) {
            title
            price
            images
                description
          }
        },
        'variables': {
        'id': id,
        'image': body.image,
        },
      ''',
    };
  }
}

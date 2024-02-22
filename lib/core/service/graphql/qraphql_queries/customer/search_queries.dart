import 'package:asroo_store/features/customer/search/data/models/search_request_body.dart';

class SearchQueries {
  factory SearchQueries() {
    return _instance;
  }
  const SearchQueries._();

  static const SearchQueries _instance = SearchQueries._();

  //Product Details
  Map<String, dynamic> searchProduct({required SearchRequestBody body}) {
    return {
      'query': '''
           {
          products(price_min: ${body.priceMin}, price_max:${body.priceMax} , title: ${body.searchName}) {
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

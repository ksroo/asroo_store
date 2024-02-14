class UsersQueries {
  factory UsersQueries() {
    return _instance;
  }
  const UsersQueries._();

  static const UsersQueries _instance = UsersQueries._();

  //Users get all
  Map<String, dynamic> getAllUsersMapQuery() {
    return {
      'query': '''
            {
              users{
                  name
                  id
                  email

              }
          }
      ''',
    };
  }
}

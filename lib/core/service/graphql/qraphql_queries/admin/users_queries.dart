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

  // delete user
  Map<String, dynamic> deleteUserMapQuery({
    required String userId,
  }) {
    return {
      'query': r'''
            mutation DeleteUser($userId: ID!) {
              deleteUser(id: $userId)
            }
      ''',
      'variables': {
        'userId': userId,
      },
    };
  }
}

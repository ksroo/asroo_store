import 'package:asroo_store/features/auth/data/models/login_request_body.dart';
import 'package:asroo_store/features/auth/data/models/sign_up_request_body.dart';

class AuthQueries {
  factory AuthQueries() {
    return _instance;
  }
  const AuthQueries._();

  static const AuthQueries _instance = AuthQueries._();

  Map<String, dynamic> loginMapQuery({required LoginRequestBody body}) {
    return {
      'query': r'''
          mutation Login($email: String!, $password: String!) {
            login(email: $email, password: $password) {
              access_token
              refresh_token
            }
          }
        ''',
      'variables': {
        'email': body.email,
        'password': body.password,
      },
    };
  }

  Map<String, dynamic> signUpMapQuery({required SignUpRequestBody body}) {
    return {
      'query': r'''
              mutation SignUp($name: String!, $email: String! , $password: String!, $avatar: String!) {
              addUser(
                data: {
                  name: $name
                  email: $email
                  password:$password
                  avatar: $avatar
                  role: customer
                }
              ) {
                id
                email
              }
            }
        ''',
      'variables': {
        'name': body.name,
        'email': body.email,
        'password': body.password,
        'avatar': body.avatar,
      },
    };
  }
}

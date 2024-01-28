import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvTypeEnum { dev, prod }

class EnvVariable {
  EnvVariable._();

  static final EnvVariable instance = EnvVariable._();

  String _envType = '';

  Future<void> init({required EnvTypeEnum envType}) async {
    switch (envType) {
      case EnvTypeEnum.dev:
        await dotenv.load(fileName: '.env.dev');

      case EnvTypeEnum.prod:
        await dotenv.load(fileName: '.env.prod');
    }

    _envType = dotenv.get('ENV_TYPE');
  }

  bool get debugMode => _envType == 'dev';
}

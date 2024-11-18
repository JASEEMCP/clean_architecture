import 'package:envied/envied.dart';
import 'package:structure/infrastructure/env/env.dart';
import 'package:structure/infrastructure/env/env_keys.dart';


part 'prod_env.g.dart';

@Envied(name: 'Env', path: '.env.prod')
final class ProductionEnv implements Env, EnvKeys {
  

  @override
  @EnviedField(varName: 'API_BASE_URL', obfuscate: true)
  final String apiBaseUrl = _Env.apiBaseUrl;

  
}

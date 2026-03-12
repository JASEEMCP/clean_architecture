// import 'package:app/core/env/dev_env.dart';
import 'package:app/core/env/env_keys.dart';
import 'package:app/core/env/prod_env.dart';
import 'package:flutter/foundation.dart';

abstract interface class Env implements EnvKeys {
  static const env = kDebugMode;

  factory Env() => _instance;

  static final Env _instance = env ? ProductionEnv() : ProductionEnv();
}

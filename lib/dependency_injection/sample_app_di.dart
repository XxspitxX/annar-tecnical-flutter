import 'package:data/di/data_di.module.dart';
import 'package:domain/di/domain_di.module.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ui/di/ui_di.module.dart';
import 'package:api_source/di/api_source_di.module.dart';

import 'sample_app_di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  externalPackageModulesAfter: [
    ExternalModule(DataPackageModule),
    ExternalModule(DomainPackageModule),
    ExternalModule(ApiSourcePackageModule),
    ExternalModule(UiPackageModule),

  ],
)
Future<void> regissterDependencies() async {
  await getIt.init();
}

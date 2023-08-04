import 'package:get_it/get_it.dart';
import 'package:ritma_crm/service/ritmaflex_pro_api.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton<RitmaFlexService>(() => RitmaFlexService());
}

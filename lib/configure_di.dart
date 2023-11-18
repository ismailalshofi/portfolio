import 'package:get_it/get_it.dart';
import 'package:ismail_portfolio/core/app_store/app_store.dart';

final getIt = GetIt.instance;

Future<void> configureInjection() async {
  final AppStore appStore = AppStore();

  getIt.registerLazySingleton<AppStore>(() => appStore);
}

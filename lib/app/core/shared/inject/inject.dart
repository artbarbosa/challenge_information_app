import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:information_app/app/core/auth/interactor/stores/auth_store.dart';
import 'package:information_app/app/core/shared/services/local/shared_preferences_service.dart';
import 'package:information_app/app/core/shared/services/remote/http_client_service.dart';
import 'package:information_app/app/modules/login/interactor/stores/login_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../modules/informations/data/datasources/local/information_local_datasource.dart';
import '../../../modules/informations/data/datasources/remote/information_remote_datasource.dart';
import '../../../modules/informations/data/repositories/information_repository.dart';
import '../../../modules/informations/interactor/repositories/information_repository_interface.dart';
import '../../../modules/informations/interactor/stores/information_store.dart';
import '../../../modules/login/data/datasources/login_datasources.dart';
import '../../../modules/login/data/repositories/login_repository.dart';
import '../../../modules/login/interactor/repositories/login_repository_interface.dart';
import '../services/local/local_storage_service.dart';
import '../services/remote/http_client_service_interface.dart';

class Inject {
  static initialize() async {
    final getIt = GetIt.I;

    getIt.registerLazySingleton<Client>(() => Client());

    getIt.registerLazySingleton<IHttpClientService>(
        () => HttpClientServiceMock());

    getIt.registerLazySingleton<ILocalStorageService>(() =>
        SharedPreferencesLService(
            sharedPreferences: SharedPreferences.getInstance()));

    getIt.registerLazySingleton<IInformationRemoteDataSource>(
        () => InformationRemoteDataSource(client: getIt()));
    getIt.registerLazySingleton<IInformationLocalDataSource>(
        () => InformationLocalDataSource(localStorageService: getIt()));
    getIt.registerLazySingleton<ILoginDataSource>(
        () => LoginDataSource(client: getIt()));

    getIt.registerLazySingleton<IInformationRepository>(
        () => InformationRepository(
              localDataSource: getIt(),
              remoteDataSource: getIt(),
            ));
    getIt.registerLazySingleton<ILoginRepository>(() => LoginRepository(
          dataSource: getIt(),
        ));

    getIt.registerLazySingleton<AuthStore>(() => AuthStore());
    getIt.registerLazySingleton<InformationStore>(
        () => InformationStore(repository: getIt()));
    getIt.registerLazySingleton<LoginStore>(
        () => LoginStore(authStore: getIt(), repository: getIt()));
  }
}

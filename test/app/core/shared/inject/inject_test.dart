import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:information_app/app/core/auth/interactor/stores/auth_store.dart';
import 'package:information_app/app/core/shared/inject/inject.dart';
import 'package:information_app/app/core/shared/services/remote/http_client_service.dart';
import 'package:information_app/app/core/shared/services/remote/http_client_service_interface.dart';
import 'package:information_app/app/modules/informations/data/datasources/remote/information_remote_datasource.dart';
import 'package:information_app/app/modules/login/data/datasources/login_datasources.dart';
import 'package:information_app/app/modules/login/data/repositories/login_repository.dart';
import 'package:information_app/app/modules/login/interactor/repositories/login_repository_interface.dart';
import 'package:information_app/app/modules/login/interactor/stores/login_store.dart';

void main() {
  setUpAll(() async {
    await Inject.initialize();
  });
  test('Should return Instance HttpClientServiceMock', () async {
    final result = GetIt.I<IHttpClientService>();

    expect(result, isA<IHttpClientService>());
    expect(result, isA<HttpClientServiceMock>());
  });

  test('Should return Instance InformationRemoteDataSource', () async {
    final result = GetIt.I<IInformationRemoteDataSource>();

    expect(result, isA<IInformationRemoteDataSource>());
    expect(result, isA<InformationRemoteDataSource>());
  });

  test('Should return Instance LoginDataSource', () async {
    final result = GetIt.I<ILoginDataSource>();

    expect(result, isA<ILoginDataSource>());
    expect(result, isA<LoginDataSource>());
  });

  test('Should return Instance LoginRepository', () async {
    final result = GetIt.I<ILoginRepository>();

    expect(result, isA<ILoginRepository>());
    expect(result, isA<LoginRepository>());
  });

  test('Should return Instance AuthStore', () async {
    final result = GetIt.I<AuthStore>();

    expect(result, isA<AuthStore>());
  });

  test('Should return Instance LoginStore', () async {
    final result = GetIt.I<LoginStore>();

    expect(result, isA<LoginStore>());
  });
}

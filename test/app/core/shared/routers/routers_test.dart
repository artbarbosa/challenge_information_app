import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:information_app/app/core/shared/routers/routers.dart';

void main() {
  const String initialRoute = '/login';

  group('Routers - initialRoute', () {
    test('Should return initial route', () async {
      final result = Routers.initialRoute;

      expect(result, initialRoute);
    });
  });
  group('Routers - routes', () {
    test('Should return routes', () async {
      final result = Routers.routes;

      expect(
          result, isA<Map<String, Widget Function(BuildContext, dynamic)>>());
    });
  });

  group('Routers - generateRoutes', () {
    test('Should return Route', () async {
      const result = Routers.generateRoutes;

      expect(result, isA<Route<dynamic>? Function(RouteSettings)>());
    });
  });
}

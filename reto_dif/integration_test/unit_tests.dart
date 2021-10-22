
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/mockito.dart';
import 'package:reto_dif/activities/categories.dart';
import 'package:reto_dif/activities/details.dart';
import 'package:reto_dif/activities/services.dart';
import 'package:reto_dif/services/category.dart';
import 'package:reto_dif/services/data_utils.dart';
import 'package:reto_dif/services/service.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  Widget categoriesTestWidget({required List<DifCategory> data}) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: RouteSettings(arguments: {'categories': data}),
          builder: (context) {
            return const Categories();
          },
        );
      },
    );
  }

  Widget serviceListTestWidget({required List<DifService> data}) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: RouteSettings(arguments: {'services': data}),
          builder: (context) {
            return const Services();
          },
        );
      },
    );
  }

  Widget serviceDetailsTestWidget({required DifService data}) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: RouteSettings(arguments: {'service': data}),
          builder: (context) {
            return const Details();
          },
        );
      },
    );
  }

  // Despliegue en cuadricula de categorias
  testWidgets('Cuadricula de categorias con sus nombres',
      (WidgetTester tester) async {
    List<DifCategory> categories = await getCategories();

    await tester.pumpWidget(categoriesTestWidget(data: categories));

    expect(find.text('Educación'), findsOneWidget);
    expect(find.text('Salud'), findsOneWidget);
    expect(find.text('Atención al Adulto Mayor'), findsOneWidget);
    expect(find.text('Atención Jurídica'), findsOneWidget);
    expect(find.text('Comedor Infantil'), findsOneWidget);
    expect(find.text('Departamento de Capacitación a la Mujer'), findsOneWidget);
    expect(find.text('Comedor Infantil'), findsOneWidget);
    expect(find.text('Actividad Física'), findsOneWidget);
    expect(find.text('Pilares de Acción'), findsOneWidget);
  });

  testWidgets(
      'Despliegue en lista de servicios en base a su categoría (categoría de prueba: Salud)',
      (WidgetTester tester) async {
    var category = await DifCategory().getObject('4rtj4hRoBm');

    List<DifService> services = await getCatServices(category.result);

    await tester.pumpWidget(serviceListTestWidget(data: services));

    expect(find.text('Consultorios Médicos y Dentales'), findsOneWidget);
    expect(find.text('Consultorios de Atención Psicológica'), findsOneWidget);
    expect(find.text('Unidad de Rehabilitación e Integración Social (URIS)'),
        findsOneWidget);
    expect(find.text('Estimulación Temprana'), findsOneWidget);
  });

  testWidgets('Despliegue de detalles de un servicio en específico',
      (WidgetTester tester) async {
    var service = await DifService().getObject('5Bx6Sz5zAs');

    await tester.pumpWidget(serviceDetailsTestWidget(data: service.result));

    expect(find.text(service.result.name), findsOneWidget);
    expect(find.text(service.result.description), findsOneWidget);
    expect(find.text(service.result.addresses[0]), findsOneWidget);
  });

  testWidgets(
      'Se despliega widget de Google Maps si hay una dirección válida en el servicio',
      (WidgetTester tester) async {
    var service = await DifService().getObject('EVDRxOgzPg');

    await tester.pumpWidget(serviceDetailsTestWidget(data: service.result));
    await tester.pump();

    expect(find.byKey(const Key('GoogleMap')), findsOneWidget);
  });

  testWidgets(
      'No se despliega widget de Google Maps en caso de que el servicio no contenga una dirección válida',
      (WidgetTester tester) async {
    var service = await DifService().getObject('2qg5h5lDLU');

    await tester.pumpWidget(serviceDetailsTestWidget(data: service.result));
    await tester.pump();

    expect(find.byKey(const Key('GoogleMap')), findsNothing);
  });
}

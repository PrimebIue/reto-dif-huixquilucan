
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/mockito.dart';
import 'package:reto_dif/activities/categories.dart';
import 'package:reto_dif/services/category.dart';
import 'package:reto_dif/services/data_utils.dart';

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

  testWidgets('test', (WidgetTester tester) async {
    List<DifCategory> categories = await getCategories();

    await tester.pumpWidget(categoriesTestWidget(data: categories));

    expect(find.text('Salud'), findsOneWidget);
  });
}

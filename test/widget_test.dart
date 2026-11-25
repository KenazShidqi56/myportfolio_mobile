import 'package:flutter_test/flutter_test.dart';
import 'package:myportfolio_mobile/main.dart';
import 'package:myportfolio_mobile/services/api_client.dart';

void main() {
  testWidgets('Portfolio app renders home screen', (WidgetTester tester) async {
    // Initialize ApiClient (adjust constructor arguments if your ApiClient requires baseUrl/client)
    final apiClient = ApiClient();

    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp(apiClient: apiClient));
    await tester.pumpAndSettle();

    // Verify that the main menu/app bar renders without crashing.
    expect(find.byType(MyApp), findsOneWidget);
  });
}
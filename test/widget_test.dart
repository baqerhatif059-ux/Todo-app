import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/main.dart';

void main() {
  testWidgets('TodoApp smoke test - verifies initial tasks and title', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TodoApp());
    await tester.pump();

    // Verify app title and section exist
    expect(find.text('My Tasks'), findsOneWidget);
    expect(find.text('All'), findsOneWidget);

    // Verify preloaded tasks exist
    expect(find.text('Design new UI mockups'), findsOneWidget);
    expect(find.text('Buy groceries'), findsOneWidget);
    expect(find.text('Morning workout'), findsOneWidget);
  });
}

// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/di/di_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:news_app/presentation/pages/news_listing/news_listing_page.dart';
import 'package:news_app/presentation/utils/string_utils.dart';

void main() {
  setUpAll(() {
    configureDependencies(Env.testing);
  });

  testWidgets('App bar should have the correct title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: NewsListingPage(),
        ),
      ),
    );
    // Verify that the title in the AppBar is correct
    expect(find.text(NewsAppString.topNews), findsOneWidget);
  });

  testWidgets('NewsListingPage displays loading indicator initially', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: NewsListingPage(),
        ),
      ),
    );

    // Verify that the loading indicator is displayed.
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });


}


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:devika_portfolio/app/app.dart';
import 'package:devika_portfolio/screens/home_screen.dart';

void main() {
  testWidgets('Portfolio app loads successfully', (tester) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;

    await tester.pumpWidget(const DevikaPortfolioApp());

    expect(find.byType(HomeScreen), findsOneWidget);

    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
  });
}

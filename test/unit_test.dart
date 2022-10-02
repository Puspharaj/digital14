// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:digital_14_puspharaj/packages/search_repo/models/listevent.dart';
import 'package:digital_14_puspharaj/packages/search_repo/search_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('initial test', () {
    test('load the items to list', () async {
      SearchRepository searchRepository = SearchRepository();
      ListEvent list = await searchRepository.fetchItems();
      expect(list.events!.elementAt(0).title, 'ShoalsFest');
    });
  });
}

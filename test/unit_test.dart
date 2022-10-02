// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:digital_14_puspharaj/packages/search_repo/models/listevent.dart';
import 'package:digital_14_puspharaj/packages/search_repo/search_repository.dart';
import 'package:digital_14_puspharaj/pages/details/detail_page.dart';
import 'package:digital_14_puspharaj/widgets/listitem.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('initial test', () {
    SearchRepository searchRepository = SearchRepository();
    test('load the items to list', () async {
      ListEvent list = await searchRepository.fetchItems(1);
      expect(list.events!.elementAt(0).id, 5714752);
    });

    test('detail screen', () async {
      ListEvent list = await searchRepository.fetchItems(1);
      Item item = Item(
        address: list.events!.elementAt(0).venue!.address!,
        date: list.events!.elementAt(0).datetimeUtc!,
        favorite: list.events!.elementAt(0).id!,
        id: list.events!.elementAt(0).id!,
        image: list.events!.elementAt(0).performers!.elementAt(0).image!,
        title: list.events!.elementAt(0).title!,
      );
      var page = DetailPage(
        item: item,
      );
      expect(item.address, page.item.address);
    });
  });
}

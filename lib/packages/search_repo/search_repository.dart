import 'dart:convert';
import 'package:digital_14_puspharaj/packages/search_repo/models/listevent.dart';
import 'package:digital_14_puspharaj/utility/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SearchRepository {
  Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  /// List the items using a fetch call with the help of http package post
  Future<ListEvent> fetchItems(int page) async {
    Uri uri = Uri.parse(URL + EVENT + CLIENT_ID + CID + PAGE + page.toString());
    ListEvent listEvent = const ListEvent();
    debugPrint(uri.toString());
    try {
      await http.get(uri, headers: requestHeaders).then((value) {
        Map<String, dynamic> json = jsonDecode(value.body);
        // debugPrint(json.toString());
        ListEvent events = ListEvent.fromJson(json);
        debugPrint(events.events![0].id.toString());
        listEvent = events;
      });
    } catch (e) {
      throw Exception(e.toString());
    }
    return listEvent;
  }

  /// Search the items using a fetch call with the help of http package post
  Future<ListEvent> searchItems(String query) async {
    Uri uri = Uri.parse(
      '$URL$EVENT$CLIENT_ID$CID&q=$query',
    );
    ListEvent listEvent = const ListEvent();
    try {
      debugPrint(uri.toString());
      await http.get(uri, headers: requestHeaders).then((value) {
        Map<String, dynamic> json = jsonDecode(value.body);
        // debugPrint(json.toString());
        ListEvent events = ListEvent.fromJson(json);
        debugPrint(events.events![0].id.toString());
        listEvent = events;
      });
    } catch (e) {
      throw Exception(e.toString());
    }
    return listEvent;
  }

  ///Store the favorite id
  Future<int> storeFavorite(int favoriteId) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    try {
      sharedPreferences.setInt('favorite', favoriteId);
      final int? favorite = sharedPreferences.getInt('favorite');
      return favorite!;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<int> readFavorite() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    try {
      final int? favorite = sharedPreferences.getInt('favorite');
      return favorite!;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
